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

  Future<bool> sendPushNotificationByTopic(
    Session session,
    String topic,
    String message,
    String title,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'MessageEndpoint',
      operation: () async {
        return await service.sendPushNotificationByTopic(
          session,
          topic: topic,
          message: message,
          title: title,
        );
      },
    );
  }

  Future<bool> registerUserInTopic(
    Session session,
    String idToken,
    String topic,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'MessageEndpoint',
      operation: () async {
        return await service.registerUserToTopic(
          session,
          idToken: idToken,
          topic: topic,
        );
      },
    );
  }
}
