import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:serverpod/serverpod.dart';

class DevicesService extends Service {
  Future<bool> registerORUpdateFCMToken(
    Session session, {
    required String tokenFCM,
    required String deviceId,
    required String userId,
    required DevicesType devicesType,
  }) async {
    final now = DateTime.now().toUtc();
    final deviceToken = DeviceToken(
      token: tokenFCM,
      deviceId: deviceId,
      userId: userId,
      type: devicesType,
      createdAt: now,
      updatedAt: now,
    );

    final checkToken = await getDeviceToken(
      session,
      tokenFCM: tokenFCM,
    );
    if (checkToken != null) {
      return await performOperation(
        operationName: 'updateFCMToken',
        operation: () async {
          await DeviceToken.db.update(
            session,
            [
              deviceToken.copyWith(
                id: checkToken.id,
              ),
            ],
          ).onError((
            error,
            stackTrace,
          ) {
            throw NotifyPodException(
              title: 'Failed to register FCM token',
              error: error.toString(),
              stackTrace: stackTrace.toString(),
            );
          });
          return true;
        },
      );
    } else {
      return await performOperation(
        operationName: 'registerFCMToken',
        operation: () async {
          await DeviceToken.db.insert(
            session,
            [deviceToken],
          ).onError((
            error,
            stackTrace,
          ) {
            throw NotifyPodException(
              title: 'Failed to register FCM token',
              error: error.toString(),
              stackTrace: stackTrace.toString(),
            );
          });
          return true;
        },
      );
    }
  }

  Future<DeviceToken?> getDeviceToken(
    Session session, {
    required String tokenFCM,
  }) async {
    return await performOperation(
      operationName: 'getDeviceToken',
      operation: () async {
        final deviceToken = await DeviceToken.db
            .find(
          session,
          where: (t) => t.token.equals(tokenFCM),
        )
            .onError((
          error,
          stackTrace,
        ) {
          throw NotifyPodException(
            title: 'Failed to get device token',
            error: error.toString(),
            stackTrace: stackTrace.toString(),
          );
        });

        return deviceToken.isNotEmpty ? deviceToken.first : null;
      },
    );
  }

  Future<List<DeviceToken>?> getAllDevicesTokens(
    Session session, {
    required String userId,
  }) async {
    return await performOperation(
      operationName: 'getAllDevicesTokens',
      operation: () async {
        final deviceToken = await DeviceToken.db
            .find(
          session,
          where: (t) => t.userId.equals(userId),
        )
            .onError((
          error,
          stackTrace,
        ) {
          throw NotifyPodException(
            title: 'Failed to get device token for user $userId',
            error: error.toString(),
            stackTrace: stackTrace.toString(),
          );
        });

        return deviceToken.isNotEmpty ? deviceToken : null;
      },
    );
  }

  // Future<bool> registerDevice(
  //   Session session, {
  //   required String userId,
  //   required String deviceId,
  //   required DevicesType devicesType,
  // }) async {
    

}
