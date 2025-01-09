import 'package:logging/logging.dart';
import 'package:notify_pod_server/src/dependency_inyection/dependency_injection.dart';

final Logger _logger = Logger('CheckDependencyIsRegistered');

void registerIfNotRegistered<T extends Object>(
  T instance,
  String name,
) {
  try {
    if (!getIt.isRegistered<T>()) {
      getIt.registerSingleton<T>(instance);
      _logger.info('$name register ok.');
    } else {
      _logger.info('$name is already registered.');
    }
  } catch (e) {
    _logger.severe('Error to register $name: $e');
  }
}
