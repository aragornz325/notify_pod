import 'package:dart_firebase_admin/messaging.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:serverpod/serverpod.dart';

class NotificacionPushServices extends Service {
  final Messaging _messaging = getIt.get<Messaging>();
  final DevicesService _devicesService = getIt.get<DevicesService>();
  Future<bool> sendMessageByUserId(
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

          final List<TokenMessage> tokenMessages = [];

          logger.fine(
            'registering notification for ${tokens.length} devices',
          );
          for (final token in tokens) {
            await NotificacionPush.db.insert(session, [
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
          }
          logger.fine(
            'Preparing messages for ${tokens.length} devices',
          );
          tokens.map((element) {
            tokenMessages.add(
              TokenMessage(
                token: element.token,
                notification: Notification(
                  title: title,
                  body: message,
                ),
              ),
            );
          });

          final List<Future<void>> sendFutures = tokenMessages.map((
            token,
          ) {
            return _messaging.send(
              token,
            );
          }).toList();

          logger.fine(
            'Sending message to ${tokens.length} devices',
          );
          try {
            await Future.wait(sendFutures);
            logger.fine(
              'All messages sent successfully',
            );
            return true;
          } catch (e, stackTrace) {
            logger.severe(
              'Failed to send some or all messages',
              e,
              stackTrace,
            );
            throw NotifyPodException(
              title: 'error at sending messages',
              error: e.toString(),
              stackTrace: stackTrace.toString(),
            );
          }
        });
  }
}
