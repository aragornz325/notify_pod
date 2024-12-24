import 'package:notify_pod_server/src/endpoints/controller.dart';
import 'package:notify_pod_server/src/services/messages/notificacion_push_service.dart';
import 'package:serverpod/serverpod.dart';

class MessageEndpoint extends Endpoint with Controller<NotificacionPushServices> {

  Future<bool> sendPushNotificationByUserId(
    Session session,
    String userId,
    String message,
    String title,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'MessageEndpoint',
      operation: () async {
        return await service.sendPushNotificationByUserId(
          session,
          userId: userId,
          message: message,
          title: title,
        );
      },
    );
  }
}
