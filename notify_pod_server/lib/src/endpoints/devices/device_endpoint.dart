import 'package:notify_pod_server/src/endpoints/controller.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:serverpod/serverpod.dart';

class DeviceEndpoint extends Endpoint with Controller<DevicesService> {
  Future<bool> registerDevice(
    Session session,
    String tokenFCM,
    String userId,
    String deviceId,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'DeviceEndpoint',
      operation: () async {
        return await service.registerORUpdateDevice (
          session,
          deviceId: deviceId,
          tokenFCM: tokenFCM,
          userId: userId,
         
        );
      },
    );
  }
}
