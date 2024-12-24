import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:get_it/get_it.dart';

import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/messaging.dart';
import 'package:notify_pod_server/src/services/devices/devices_service.dart';
import 'package:notify_pod_server/src/services/messages/notificacion_push_service.dart';

final GetIt getIt = GetIt.instance;

void setupNotifyDependencies({required FirebaseAdminApp admin}) {
  Auth auth = Auth(admin);
  Messaging messaging = Messaging(admin);
  
  //firebase services
  getIt.registerSingleton<Auth>(auth);
  getIt.registerSingleton<FirebaseAdminApp>(admin);
  getIt.registerSingleton<Messaging>(messaging);

  //notify_por services
  getIt.registerSingleton<DevicesService>(
    DevicesService(),
  );
  getIt.registerSingleton<NotificacionPushServices>(
    NotificacionPushServices(),
  );
}
