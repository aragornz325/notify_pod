import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:firebaseapis/fcm/v1.dart';
import 'package:get_it/get_it.dart';

import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/messaging.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:notify_pod_server/src/services/mail/mails_service.dart';
import 'package:notify_pod_server/src/services/messages/notificacion_push_service.dart';
import 'package:notify_pod_server/src/utiles/check_depenci_is_registered.dart';

final GetIt getIt = GetIt.instance;

void setupNotifyDependencies({
  required FirebaseAdminApp admin,
  required FirebaseCloudMessagingApi clientFMCApi,
}) async {
  Auth auth = Auth(admin);
  Messaging messaging = Messaging(admin);

  // Firebase services
  registerIfNotRegistered<Auth>(
    auth,
    'Auth',
  );
  registerIfNotRegistered<FirebaseAdminApp>(
    admin,
    'FirebaseAdminApp',
  );
  registerIfNotRegistered<Messaging>(
    messaging,
    'Messaging',
  );

  // Firebaseapis services
  registerIfNotRegistered<FirebaseCloudMessagingApi>(
    clientFMCApi,
    'FirebaseCloudMessagingApi',
  );

  // Notify pod services
  registerIfNotRegistered<DevicesService>(
    DevicesService(),
    'DevicesService',
  );
  registerIfNotRegistered<NotificacionPushServices>(
    NotificacionPushServices(),
    'NotificacionPushServices',
  );

  registerIfNotRegistered<EmailPodServices>(
    EmailPodServices(),
    'EmailsService',
  );
}
