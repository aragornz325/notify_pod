import 'dart:convert';
import 'dart:io';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
// ignore: depend_on_referenced_packages
import 'package:logging/logging.dart';
import 'package:notify_pod_server/notify_pod_server.dart';
import 'package:notify_pod_server/src/utiles/find_project_root_path.dart';
import 'package:notify_pod_server/src/utiles/get_config_file.dart';

FirebaseAdminApp getAuthByEnvironment({
  required NotifyEnvironment notifyEnvironment,
  required Logger logger,
}) {

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

  if (!File(configPath).existsSync()) {
    logger.severe(
      'Firebase initialization error: configuration file not found.',
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

  if (!configJson.containsKey(
    'project_id',
  )) {
    logger.severe(
      '''Firebase initialization error: 
      configuration file is missing "project_id".''',
    );
    throw Exception(
      'Configuration file does not contain "project_id".',
    );
  }

  final projectId = configJson['project_id'] as String;

  logger.finer(
    '''Initializing Firebase for environment: 
    $notifyEnvironment with project_id: $projectId...''',
  );

  final FirebaseAdminApp admin = FirebaseAdminApp.initializeApp(
    projectId, // Extracted project_id from JSON
    Credential.fromServiceAccount(
      configFile,
    ),
  );


  return admin;
}
