
import 'dart:async';

import 'package:logging/logging.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';

abstract class Service {
  final Logger logger = Logger('service NotifyPod');

  Future<T> performOperation<T>({
    required String operationName,
    required FutureOr<T> Function() operation,
  }) async {
    try {
      logger.finer(
        'Starting operation: $operationName',
      );
      final result = await operation();
      logger.finest(
        'Operation $operationName completed successfully',
      );
      return result;
    } on NotifyPodException catch (e) {
      logger.shout('''
ERROR NOTIFY POD
Title: ${e.title}
Message: ${e.error}
Stack Trace: ${e.stackTrace}
''');
      rethrow;
    } catch (e, st) {
      logger.shout('''
ERROR NOTIFY POD UNKNOWN
Error: $e
Stack Trace: $st
''');
      throw Exception(
        'Error in operation $operationName: $e',
      );
    }
  }
}