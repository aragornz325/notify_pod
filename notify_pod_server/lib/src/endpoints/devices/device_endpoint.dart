import 'package:notify_pod_server/src/endpoints/controller.dart';
import 'package:serverpod/serverpod.dart';

class DeviceEndpoint extends Endpoint with Controller {

  

  Future<void> registerDevice(
    Session session,
    String deviceToken,
  ) async {}
}
