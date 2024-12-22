
import 'package:get_it/get_it.dart';

import 'package:dart_firebase_admin/auth.dart';


final GetIt getIt = GetIt.instance;

void setupNotifyDependencies({
  required Auth auth,
}) {
  getIt.registerSingleton<Auth>(auth);
}
