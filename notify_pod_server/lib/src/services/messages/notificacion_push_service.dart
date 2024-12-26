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
    final devices = await _devicesService.getAllUserDevices(
      session,
      userId: userId,
    );
    if (devices == null || devices.isEmpty) {
      logger.shout(
        'no devices found for user $userId',
      );
      return false;
    }

    for (final device in devices) {
      final messageInDb = await performOperation<NotificacionPush>(
        operationName: 'insert notification in db',
        operation: () async {
          final notification = await NotificacionPush.db.insert(session, [
            NotificacionPush(
              deviceId: device.idDevice,
              userId: userId,
              title: title,
              message: message,
              sendAt: now,
              createdAt: now,
              updatedAt: now,
              status: NotificationStatus.PENDING,
            ),
          ]);
          return notification.first;
        },
      );
      try {
        logger.fine(
          'sending push notification to device ${device.idDevice}',
        );

        await _messaging.send(
          TokenMessage(
            token: device.tokenFCM,
            notification: Notification(
              title: title,
              body: message,
            ),
          ),
        );
        await performOperation(
          operationName: 'update notification status',
          operation: () async {
            await NotificacionPush.db.update(
              session,
              [
                messageInDb.copyWith(
                  status: NotificationStatus.SENT,
                  updatedAt: now,
                )
              ],
            );
          },
        );
        await performOperation(
          operationName: 'register log',
          operation: () async {
            await NotificationsLogs.db.insert(
              session,
              [
                NotificationsLogs(
                  notificationId: messageInDb.id!,
                  deviceId: device.id!,
                  createdAt: now,
                  updatedAt: now,
                  attemptAt: now,
                  status: NotificationStatus.SENT,
                ),
              ],
            );
          },
        );
      } catch (e) {
        logger.shout(
          'error: $e',
          e,
        );
        await performOperation(
          operationName: 'register notification log in fail',
          operation: () async {
            await NotificationsLogs.db.insert(
              session,
              [
                NotificationsLogs(
                  notificationId: messageInDb.id!,
                  deviceId: device.id!,
                  createdAt: now,
                  updatedAt: now,
                  attemptAt: now,
                  status: NotificationStatus.FAILED,
                  error: e.toString(),
                ),
              ],
            );
          },
        );
      }
    }
    return true;
  }

  Future<bool> sendPushNotificationByTopic(
    Session session, {
    required String title,
    required String message,
    required String topic,
  }) async {
    final now = DateTime.now().toUtc();

    final messageInDb = await performOperation<NotificacionPushByTopic>(
      operationName: 'insert notification in db',
      operation: () async {
        final notification = await NotificacionPushByTopic.db.insert(session, [
          NotificacionPushByTopic(
            topic: topic,
            title: title,
            message: message,
            sendAt: now,
            createdAt: now,
            updatedAt: now,
            status: NotificationStatus.PENDING,
          ),
        ]);
        return notification.first;
      },
    );
    try {
      await _messaging.send(
        TopicMessage(
          topic: topic,
          notification: Notification(
            title: title,
            body: message,
          ),
        ),
      );
      await performOperation(
        operationName: 'update notification status',
        operation: () async {
          await NotificacionPushByTopic.db.update(
            session,
            [
              messageInDb.copyWith(
                status: NotificationStatus.SENT,
                updatedAt: now,
              )
            ],
          );
          await performOperation(
            operationName: 'register topic notification log',
            operation: () async {
              await NotificationsByTopicLogs.db.insert(
                session,
                [
                  NotificationsByTopicLogs(
                    notificationId: messageInDb.id!,
                    createdAt: now,
                    updatedAt: now,
                    attemptAt: now,
                    status: NotificationStatus.SENT,
                  ),
                ],
              );
            },
          );
        },
      );
      return true;
    } catch (e) {
      logger.shout(
        'error: $e',
        e,
      );
      await performOperation(
        operationName: 'update notification status',
        operation: () async {
          await NotificacionPushByTopic.db.update(
            session,
            [
              messageInDb.copyWith(
                status: NotificationStatus.FAILED,
                updatedAt: now,
              )
            ],
          );
          await performOperation(
            operationName: 'register topic notification log on fail ',
            operation: () async {
              await NotificationsByTopicLogs.db.insert(
                session,
                [
                  NotificationsByTopicLogs(
                    notificationId: messageInDb.id!,
                    createdAt: now,
                    updatedAt: now,
                    attemptAt: now,
                    status: NotificationStatus.FAILED,
                    error: e.toString(),
                  ),
                ],
              );
            },
          );
        },
      );
      return false;
    }
  }
}
