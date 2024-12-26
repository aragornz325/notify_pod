import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/auth_io.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
// ignore: depend_on_referenced_packages
import 'package:logging/logging.dart';
import 'package:firebaseapis/fcm/v1.dart';
import 'package:notify_pod_server/src/utiles/find_project_root_path.dart';
import 'package:notify_pod_server/src/utiles/get_config_file.dart';

Future<FirebaseCloudMessagingApi> initializeFirebaseMessageApi({
  required NotifyEnvironment notifyEnvironment,
  required Logger logger,
}) async {
  logger.fine(
    'Initializing Firebase Cloud Messaging API...',
  );
  final currentDirectory = Directory.current;
  final rootPath = findProjectRootPath(
    currentDirectory,
    logger,
  );
  final configFileName = getConfigFilePath(
    notifyEnvironment,
  );
  final configPath = '$rootPath/config/$configFileName';

  logger.fine(
    'Configuration file path: $configPath',
  );

  if (!File(
    configPath,
  ).existsSync()) {
    logger.severe(
      '''FirebaseApi messenger client initialization error: 
      configuration file not found.''',
    );
    throw Exception(
      'Configuration file not found at: $configPath',
    );
  }

  // Read and parse the JSON file
  final configFile = File(
    configPath,
  );
  final configContent = configFile.readAsStringSync();
  final Map<String, dynamic> configJson = jsonDecode(
    configContent,
  );

  final credentials = ServiceAccountCredentials.fromJson(
    configJson,
  );

  logger.finer(
    '''Initializing FirebaseApi client for environment: 
    $notifyEnvironment''',
  );
  final client = await clientViaServiceAccount(
    credentials,
    [FirebaseCloudMessagingApi.cloudPlatformScope],
  );

  return FirebaseCloudMessagingApi(
    client,
  );
}
