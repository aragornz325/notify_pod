import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:firebaseapis/fcm/v1.dart';
import 'package:notify_pod_server/notify_pod_server.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/notify_perform_operation.dart';
import 'package:notify_pod_server/src/utiles/create_message_client.dart';
import 'package:notify_pod_server/src/utiles/get_auth_by_environment.dart';

class NotifyPodInitializer extends NotifyPerformOperation {
  Future<void> init({
    required NotifyEnvironment notifyEnvironment,
  }) async {
    performNotifyPodOperation<void>(
      endpointName: 'NotifyPodInitializer.init',
      operation: () async {
        final FirebaseAdminApp admin = getAuthByEnvironment(
          notifyEnvironment: notifyEnvironment,
          logger: logger,
        );

        final FirebaseCloudMessagingApi clientFMCApi =
            await initializeFirebaseMessageApi(
          notifyEnvironment: notifyEnvironment,
          logger: logger,
        );

        setupNotifyDependencies(
          admin: admin,
          clientFMCApi: clientFMCApi,
        );
        logger.finest(
    '''Firebase Auth created and dependencies injected.
       Firebase Cloud Messaging API client created and dependencies injected.
    ''',
  );
      },
    );
  }
}
