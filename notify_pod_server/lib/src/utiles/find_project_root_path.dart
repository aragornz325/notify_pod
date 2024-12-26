import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:logging/logging.dart';

String findProjectRootPath(
    Directory currentDir,
    Logger logger,
  ) {
    Directory dir = currentDir;

    logger.fine(
      'Starting search for project root from: ${currentDir.path}',
    );

    while (dir.path != dir.parent.path) {
      final hasConfigFolder = dir.listSync().whereType<Directory>().any(
            (
              subDir,
            ) =>
                subDir.path.endsWith(
              'config',
            ),
          );

      logger.fine(
        'Checking directory: ${dir.path}',
      );
      if (hasConfigFolder) {
        logger.fine(
          'Found project root with "config" folder: ${dir.path}',
        );
        return dir.path;
      }

      dir = dir.parent;
    }

    logger.severe(
      '''Failed to find project root containing "config" directory. 
      Ensure the module is correctly structured.''',
    );
    throw Exception('Project root not found.');
  }