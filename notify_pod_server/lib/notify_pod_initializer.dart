import 'package:dart_firebase_admin/auth.dart';
import 'package:notify_pod_server/notify_pod_server.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/notify_perform_operation.dart';
import 'package:notify_pod_server/src/utiles/get_auth_by_environment.dart';

class NotifyPodInitializer extends NotifyPerformOperation {
  Future<void> init({
    required NotifyEnvironment notifyEnvironment,
  }) async {
    performNotifyPodOperation<void>(
      endpointName: 'NotifyPodInitializer.init',
      operation: () async {
        final Auth auth = getAuthByEnvironment(
          notifyEnvironment: notifyEnvironment,
          logger: logger,
        );
        setupNotifyDependencies(
          auth: auth,
        );
      },
    );
  }
}
