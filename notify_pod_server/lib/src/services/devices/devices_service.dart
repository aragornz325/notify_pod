import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:serverpod/serverpod.dart';

class DevicesService extends Service {

  /// register or update a device
  /// if the device already exists, it will return true
  /// if the device does not exist, it will create and return true
  Future<bool> registerORUpdateDevice(
    Session session, {
    required String tokenFCM,
    required String deviceId,
    required String userId,
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
      return true;
    }
    final device = Device(
      userId: userId,
      tokenFCM: tokenFCM,
      idDevice: deviceId,
      type: devicesType,
      createdAt: now,
      updatedAt: now,
    );
    await performOperation(
      operationName: 'register Device',
      operation: () async {
        await Device.db.insert(
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
      },
    );

  return true;

  }

  Future<Device?> getDevice(
    Session session, {
    required String tokenFCM,
  }) async {
    return await performOperation(
      operationName: 'getDeviceToken',
      operation: () async {
        final deviceToken = await Device.db
            .find(
          session,
          where: (t) => t.tokenFCM.equals(tokenFCM),
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

  Future<List<Device>?> getAllUserDevices(
    Session session, {
    required String userId,
  }) async {
    return await performOperation(
      operationName: 'getAllDevicesTokens',
      operation: () async {
        final deviceToken = await Device.db
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
    required String tokenFCM,
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
      tokenFCM: tokenFCM,
      idDevice: deviceId,
      type: devicesType,
      createdAt: now,
      updatedAt: now,
    );
    return await performOperation<Device>(
      operationName: 'register Device',
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
