import 'package:logging/logging.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:serverpod/serverpod.dart';

mixin Controller<T extends Service> {
  /// Getter para clase [Servicio] vinculada.
  T get service => getIt.get<T>();

  final logger = Logger('Notify Endpoint');

  Future<K> performControllerOperation<K>({
    required Session session,
    required String endpointName,
    required Future<K> Function() operation,
  }) async {
    try {
      logger.fine(
        'Access to endpoint $endpointName...',
      );

      return await operation();
    } on DatabaseException catch (e, st) {
      logger.shout('''
ERROR NOTIFY POD
Title: Database Exception in Notify Pod
Message: ${e.toString()}
Stack Trace: ${st.toString()}
''');
      rethrow;  
    } on NotifyPodException catch (e) {
      logger.shout('''
ERROR NOTIFY POD
Title: ${e.title}
Message: ${e.error}
Stack Trace: ${e.stackTrace}
''');
      rethrow;
    } catch (e, stackTrace) {
      logger.severe('Unhandled error in endpoint $endpointName', e, stackTrace);
      throw Exception(
        'Error in endpoint $endpointName: $e',
      );
    }
  }
}
