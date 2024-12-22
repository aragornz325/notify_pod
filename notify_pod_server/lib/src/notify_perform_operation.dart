import 'package:logging/logging.dart';
import 'package:notify_pod_server/src/generated/protocol.dart' hide Protocol; 


class NotifyPerformOperation {
  final logger = Logger('notify_pod_server');

  Future<K> performNotifyPodOperation<K>({
    String? idToken,
    required String endpointName,
    required Future<K> Function() operation,
  }) async {
    try {
      logger.fine(
        'Access to Notify endpoint $endpointName...',
      );

      return await operation();
    } on NotifyPodException catch (e, st) {
      logger.severe(
        'Error in notify endpoint $endpointName: $e',
        e,
        st,
      );
      rethrow;
    } catch (e, st) {
      logger.severe(
        'Error in notify endpoint $endpointName: $e',
        e,
        st,
      );
      throw Exception(
        'Error in notify endpoint $endpointName: $e',
      );
    }
  }
}
