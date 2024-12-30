import 'package:notify_pod_server/src/endpoints/messages/notificacion_push_endpoint.dart';
import 'package:serverpod/serverpod.dart';

class NotifyMessages {
  /// Send a push notification to specific user.
  /// the notification will be sent to all devices of the user.
  /// [session] the session of the user sending the notification.
  /// [userId] the id of the user to send the notification to.
  /// [title] the title of the notification.
  /// [message] the message of the notification.
  Future<bool> sendPushNotificationByUserId({
    required Session session,
    required String userId,
    required String title,
    required String message,
  }) async {
    try {
      return await MessageEndpoint().sendPushNotificationByUserId(
        session,
        userId,
        title,
        message,
      );
    } catch (e) {
      throw Exception(
        'Error in endpoint sendPushNotification: $e',
      );
    }
  }

  /// Send a push notification to a user subscripted to a topic.
  /// [session] the session of the user sending the notification.
  /// [topic] the topic to send the notification to.
  /// [title] the title of the notification.
  /// [message] the message of the notification.
  ///
  Future<bool> sendPushNotificationByTopic({
    required Session session,
    required String topic,
    required String title,
    required String message,
  }) async {
    try {
      return await MessageEndpoint().sendPushNotificationByTopic(
        session,
        topic,
        title,
        message,
      );
    } catch (e) {
      throw Exception(
        'Error in endpoint sendPushNotification: $e',
      );
    }
  }


  /// Register a user to a topic.
  /// [session] the session of the user sending the notification.
  /// [idToken] the token of the user to register.
  /// [topic] the topic to register the user to.
  Future<bool> registerUserInTopic({
    required Session session,
    required String idToken,
    required String topic,
  }) async {
    try {
      return await MessageEndpoint().registerUserInTopic(
        session,
        idToken,
        topic,
      );
    } catch (e) {
      throw Exception(
        'Error in endpoint registerUserInTopic: $e',
      );
    }
  }
}
