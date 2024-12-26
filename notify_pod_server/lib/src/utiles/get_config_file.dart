

import 'package:notify_pod_server/notify_pod_server.dart';

String getConfigFilePath(
    NotifyEnvironment env,
  ) {
    const configFiles = {
      NotifyEnvironment.DEVELOPMENT: 'firebase_service_account_key_dev.json',
      NotifyEnvironment.PRODUCTION: 'firebase_service_account_key_prod.json',
      NotifyEnvironment.STAGING: 'firebase_service_account_key.json_stag',
    };
    return configFiles[env]!;
  }