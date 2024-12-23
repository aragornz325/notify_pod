import 'dart:convert';
import 'dart:io';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:logging/logging.dart';
import 'package:notify_pod_server/notify_pod_server.dart';

FirebaseAdminApp getAuthByEnvironment({
  required NotifyEnvironment notifyEnvironment,
  required Logger logger,
}) {
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

  String findProjectRootPath(Directory currentDir, Logger logger) {
    Directory dir = currentDir;

    logger.fine('Starting search for project root from: ${currentDir.path}');

    while (dir.path != dir.parent.path) {
      final hasConfigFolder = dir
          .listSync()
          .whereType<Directory>()
          .any((subDir) => subDir.path.endsWith('config'));

      logger.fine('Checking directory: ${dir.path}');
      if (hasConfigFolder) {
        logger.fine('Found project root with "config" folder: ${dir.path}');
        return dir.path;
      }

      dir = dir.parent;
    }

    logger.severe(
      'Failed to find project root containing "config" directory. Ensure the module is correctly structured.',
    );
    throw Exception('Project root not found.');
  }

  final currentDirectory = Directory.current;
  final rootPath = findProjectRootPath(currentDirectory, logger);
  final configFileName = getConfigFilePath(notifyEnvironment);
  final configPath = '$rootPath/config/$configFileName';

  logger.fine('Configuration file path: $configPath');

  if (!File(configPath).existsSync()) {
    logger.severe(
      'Firebase initialization error: configuration file not found.',
    );
    throw Exception(
      'Configuration file not found at: $configPath',
    );
  }

  // Read and parse the JSON file
  final configFile = File(configPath);
  final configContent = configFile.readAsStringSync();
  final Map<String, dynamic> configJson = jsonDecode(configContent);

  if (!configJson.containsKey('project_id')) {
    logger.severe(
      'Firebase initialization error: configuration file is missing "project_id".',
    );
    throw Exception(
      'Configuration file does not contain "project_id".',
    );
  }

  final projectId = configJson['project_id'] as String;

  logger.fine(
    'Initializing Firebase for environment: $notifyEnvironment with project_id: $projectId...',
  );

  final FirebaseAdminApp admin = FirebaseAdminApp.initializeApp(
    projectId, // Extracted project_id from JSON
    Credential.fromServiceAccount(
      configFile,
    ),
  );

  logger.fine('Firebase Auth created and dependencies injected.');

  return admin;
}
