import 'package:notify_pod_server/src/endpoints/devices/device_endpoint.dart';
import 'package:notify_pod_server/src/endpoints/messages/notificacion_push_endpoint.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class NotifyDevices {
  /// Registers or updates the FCM token for a specific device.
  ///
  /// This function associates a Firebase Cloud Messaging (FCM) token with a user
  /// and a specific device in the system. It ensures the token is properly linked
  /// to the device ID and the user ID for targeted notifications.
  ///
  /// - [tokenFCM] The FCM token to register or update.
  /// - [userId] The user ID to associate with the FCM token.
  /// - [deviceId] The device ID to associate with the FCM token.
  ///   **Note:** The device ID should be obtained using a reliable tool such as
  ///   [device_info_plus](https://pub.dev/packages/device_info_plus). Always use
  ///   the same method across the application to maintain data consistency.
  /// - [devicesType] The type of device (e.g., Android, iOS) to register the
  ///   token for.
  ///   Use the enum [DevicesType] to specify the device type.
  ///
  /// Returns:
  /// - `true` if the registration or update was successful.
  /// - `false` otherwise.
  ///
  /// Throws:
  /// - [Exception] if an error occurs while registering the token.
  Future<bool> registerFCMToken(
    Session session, {
    required String tokenFCM,
    required String userId,
    required String deviceId,
    required DevicesType devicesType,
  }) async {
    try {
      return await DeviceEndpoint().registerFCMToken(
        session,
        tokenFCM,
        userId,
        deviceId,
        devicesType,
      );
    } catch (e) {
      throw Exception(
        'Error in endpoint registerFCMToken: $e',
      );
    }
  }

  Future<bool> sendPushNotification(
    Session session,
    String userId,
    String title,
    String message,
  ) async {
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
}
