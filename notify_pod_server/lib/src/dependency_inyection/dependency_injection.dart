import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:get_it/get_it.dart';

import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/messaging.dart';

final GetIt getIt = GetIt.instance;

void setupNotifyDependencies({required FirebaseAdminApp admin}) {
  Auth auth = Auth(admin);
  Messaging messaging = Messaging(admin);
  getIt.registerSingleton<Auth>(auth);
  getIt.registerSingleton<FirebaseAdminApp>(admin);
  getIt.registerSingleton<Messaging>(messaging);
}
