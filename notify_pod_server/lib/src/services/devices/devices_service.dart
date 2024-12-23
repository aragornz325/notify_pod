
import 'package:dart_firebase_admin/messaging.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/services/service.dart';

class DevicesService extends Service {

  Messaging get _messaging => getIt.get<Messaging>();
  Future<void> getTokenDevice() async {
  }
}
