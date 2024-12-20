import 'dart:io';
import 'package:firebase_admin/firebase_admin.dart';
import 'package:dart_firebase_admin/auth.dart';
import 'package:logging/logging.dart';
import 'package:notify_pod_server/notify_pod_server.dart';

Auth getAuthByEnvironment({
  required NotifyEnvironment notifyEnvironment ,
  required Logger logger,
}) {
  String obtenerConfigFilePath(
    NotifyEnvironment env,
  ) {
    const configFiles = {
      NotifyEnvironment.DEVELOPMENT: 'firebase_auth_prod.json',
      NotifyEnvironment.PRODUCTION: 'firebase_auth_prod.json',
      NotifyEnvironment.STAGING: 'firebase_auth_prod.json',
    };
    return configFiles[env]!;
  }

  final currentDirectory = Directory.current;
  final basePath = currentDirectory.path;

  final rootPath = basePath.contains(
    '/lib/src/utils',
  )
      ? basePath.replaceFirst(
          RegExp(
            r'/lib/src/utils.*',
          ),
          '')
      : basePath;

  final configFileName = obtenerConfigFilePath(
    notifyEnvironment,
  );
  final configPath = '$rootPath/config/$configFileName';

  logger.fine(
    'Ruta del archivo de configuración: $configPath',
  );

  if (!File(configPath).existsSync()) {
    logger.severe(
      'Error al iniciar Firebase',
    );
    throw Exception(
      'No se encontró el archivo de configuración en la ruta: $configPath',
    );
  }

  logger.fine(
    'Iniciando Firebase para el entorno: $environment...',
  );
  final FirebaseAdminApp admin = FirebaseAdminApp.initializeApp(
    'serverpodauth',
    Credential.fromServiceAccount(
      File(
        configPath,
      ),
    ),
  );
  logger.fine(
    'Firebase Auth creado e inyectando dependencias...',
  );

  return Auth(
    admin,
  );
}
