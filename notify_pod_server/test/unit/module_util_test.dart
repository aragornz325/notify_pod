import 'package:test/test.dart';
import 'package:notify_pod_server/src/module_util.dart';

void main() {
  test(
      'Given ModuleUtil '
      'when calling `buildGreeting` with name '
      'then returned greeting includes name', () async {
    final greeting = ModuleUtil.buildGreeting('Alice');
    expect(greeting, 'Hello Alice');
  });
}
