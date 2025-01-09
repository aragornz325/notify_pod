import 'package:notify_pod_server/notify_pod_server.dart';

String getConfigFilePath(
  NotifyEnvironment env,
) {
  const configFiles = {
    NotifyEnvironment.DEVELOPMENT: 'firebase_auth_dev.json',
    NotifyEnvironment.PRODUCTION: 'firebase_auth_prod.json',
    NotifyEnvironment.STAGING: 'firebase_auth_stag.json',
  };
  return configFiles[env]!;
}
