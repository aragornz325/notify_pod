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

    final device = await performOperation<Device>(
      operationName: 'verificar dispositivo',
      operation: () async {
        return await registerDevice(
          session,
          userId: userId,
          deviceId: deviceId,
          devicesType: devicesType,
        );
      },
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
                deviceId: device.idDevice,
                updatedAt: now,
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
      final deviceTokenCreado = await performOperation<DeviceToken>(
        operationName: 'registerFCMToken',
        operation: () async {
          final deviceTokenEnDb = await DeviceToken.db.insert(
            session,
            [
              deviceToken.copyWith(
                deviceId: device.idDevice,
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
          return deviceTokenEnDb.first;
        },
      );

    await performOperation(
      operationName: 'register in Junction table',
      operation: () async {
        await RegisterDeviceToken.db.insert(
          session,
          [
            RegisterDeviceToken(
              deviceId: device.id!,
              tokenId: deviceTokenCreado.id!,
              
            ),
          ],
        ).onError((
          error,
          stackTrace,
        ) {
          throw NotifyPodException(
            title: 'Failed to register in junction table',
            error: error.toString(),
            stackTrace: stackTrace.toString(),
          );
        });
      },
    );
    
    }

  return true;

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

  /// register a new device
  /// if the device already exists, it will return the id of the device
  /// if the device does not exist, it will return the id of the new device
  /// [userId] the user id
  /// [deviceId] the device id obtained from the device
  /// [devicesType] the type of device
  /// **note** use the enum [DevicesType]
  ///
  Future<Device> registerDevice(
    Session session, {
    required String userId,
    required String deviceId,
    required DevicesType devicesType,
  }) async {
    final now = DateTime.now().toUtc();
    final verificarDispositivo = await performOperation(
      operationName: 'verificar dispositivo',
      operation: () async {
        final device = await Device.db
            .find(
          session,
          where: (t) =>
              t.userId.equals(
                userId,
              ) &
              t.idDevice.equals(
                deviceId,
              ),
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

        return device.isNotEmpty ? device.first : null;
      },
    );
    if (verificarDispositivo != null) {
      return verificarDispositivo;
    }
    final device = Device(
      userId: userId,
      idDevice: deviceId,
      type: devicesType,
      createdAt: now,
      updatedAt: now,
    );
    return await performOperation<Device>(
      operationName: 'registrar device',
      operation: () async {
        final nuevoDispositivo = await Device.db.insert(
          session,
          [device],
        ).onError((
          error,
          stackTrace,
        ) {
          throw NotifyPodException(
            title: 'Failed to register device',
            error: error.toString(),
            stackTrace: stackTrace.toString(),
          );
        });
        return nuevoDispositivo.first;
      },
    );
  }
}
