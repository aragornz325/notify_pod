import 'package:dart_firebase_admin/messaging.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:serverpod/serverpod.dart';

class NotificacionPushServices extends Service {
  final Messaging _messaging = getIt.get<Messaging>();
  final DevicesService _devicesService = getIt.get<DevicesService>();
  Future<bool> sendPushNotificationByUserId(
    Session session, {
    required String title,
    required String message,
    required String userId,
  }) async {
    final now = DateTime.now().toUtc();
    return await performOperation<bool>(
      operationName: 'sendMessageByUserId',
      operation: () async {
        final tokens = await _devicesService.getAllDevicesTokens(
          session,
          userId: userId,
        );
        if (tokens == null || tokens.isEmpty) {
          throw NotifyPodException(
            title: 'No devices found',
            error: 'No devices found for user $userId',
          );
        }

        logger.fine(
          'Registering notification for ${tokens.length} devices',
        );

        for (final token in tokens) {
          final messageInDb = await NotificacionPush.db.insert(session, [
            NotificacionPush(
              deviceId: token.deviceId,
              userId: userId,
              title: title,
              message: message,
              sendAt: now,
              createdAt: now,
              updatedAt: now,
              status: NotificationStatus.PENDING,
            ),
          ]);

          try {
            logger.fine(
              'Sending message to ${token.deviceId}',
            );
            await _messaging.send(
              TokenMessage(
                token: token.token,
                notification: Notification(
                  title: title,
                  body: message,
                ),
              ),
            );
            logger.fine(
              'Message sent to ${token.deviceId}',
            );

            await performOperation(
              operationName: 'update push notification status',
              operation: () async {
                await NotificacionPush.db.update(
                  session,
                  [
                    messageInDb.first.copyWith(
                      status: NotificationStatus.SENT,
                      updatedAt: now,
                    ),
                  ],
                );
                await NotificationsLogs.db.insert(
                  session,
                  [
                    NotificationsLogs(
                      deviceId: token.id!,
                      notificationId: messageInDb.first.id!,
                      attemptAt: now,
                      createdAt: now,
                      updatedAt: now,
                      status: NotificationStatus.SENT,
                    ),
                  ],
                );
              },
            );
          } catch (e, st) {
            logger.severe(
              'Error sending message to ${token.deviceId}',
              e,
            );

            await performOperation(
              operationName: 'fail on send push notification',
              operation: () async {
                await NotificacionPush.db.update(
                  session,
                  [
                    messageInDb.first.copyWith(
                      status: NotificationStatus.FAILED,
                      updatedAt: DateTime.now().toUtc(),
                    ),
                  ],
                );
                await NotificationsLogs.db.insert(
                  session,
                  [
                    NotificationsLogs(
                      deviceId: token.id!,
                      notificationId: messageInDb.first.id!,
                      error: e.toString(),
                      attemptAt: DateTime.now().toUtc(),
                      createdAt: DateTime.now().toUtc(),
                      updatedAt: DateTime.now().toUtc(),
                      status: NotificationStatus.FAILED,
                    ),
                  ],
                ).onError((e, st) {
                  throw NotifyPodException(
                    title: 'Failed to log notification',
                    error: e.toString(),
                    stackTrace: st.toString(),
                  );
                });
              },
            );
          }
        }
        return false;
      },
    );
  }
}
