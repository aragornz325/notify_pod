// Add your modules' endpoints to the `endpoints` directory. Run
// `serverpod generate` to produce the modules server and client code. Refer to
// the documentation on how to add endpoints to your server.

import 'package:notify_pod_server/src/endpoints/controller.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:serverpod/serverpod.dart';
import '../module_util.dart';
// import '../generated/protocol.dart';

class ModuleEndpoint extends Endpoint with Controller<DevicesService> {
  Future<String> hello(
    Session session,
    String name,
  ) async {
    return ModuleUtil.buildGreeting(
      name,
    );
  }
  Future<bool> registerFCMToken(
    Session session,
    String tokenFCM,
    String userId,
    String deviceId,
    DevicesType devicesType,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'DeviceEndpoint',
      operation: () async {
        return await service.registerORUpdateDevice(
          session,
          deviceId: deviceId,
          tokenFCM: tokenFCM,
          userId: userId,
        );
      },
    );
  }
}
