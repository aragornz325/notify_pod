import 'dart:convert';
import 'dart:io';
import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:logging/logging.dart';
import 'package:notify_pod_server/notify_pod_server.dart';

Auth getAuthByEnvironment({
  required NotifyEnvironment notifyEnvironment,
  required Logger logger,
}) {
  String getConfigFilePath(
    NotifyEnvironment env,
  ) {
    const configFiles = {
      NotifyEnvironment.DEVELOPMENT: 'firebase_service_account_key.json',
      NotifyEnvironment.PRODUCTION: 'firebase_service_account_key.json',
      NotifyEnvironment.STAGING: 'firebase_service_account_key.json',
    };
    return configFiles[env]!;
  }

  String findProjectRootPath(Directory currentDir) {
    // Look for the project root directory containing `_server` and `_client`
    Directory? projectRoot;
    Directory dir = currentDir;

    while (dir.path != dir.parent.path) {
      final hasServerFolder = dir
          .listSync()
          .whereType<Directory>()
          .any((subDir) => subDir.path.endsWith('_server'));
      final hasClientFolder = dir
          .listSync()
          .whereType<Directory>()
          .any((subDir) => subDir.path.endsWith('_client'));

      if (hasServerFolder && hasClientFolder) {
        projectRoot = dir.parent;
        break;
      }
      dir = dir.parent;
    }

    if (projectRoot == null) {
      logger.severe(
        'Failed to find project root containing "_server" and "_client". Ensure the module is correctly structured.',
      );
      throw Exception(
        'Project root not found.',
      );
    }

    return projectRoot.path;
  }

  final currentDirectory = Directory.current;
  final rootPath = findProjectRootPath(currentDirectory);
  final configFileName = getConfigFilePath(notifyEnvironment);
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

  logger.fine(
    'Firebase Auth created and dependencies injected.',
  );

  return Auth(admin);
}
