import 'network/api.dart';
import 'service_locator.dart';

class CoreServiceLocator implements ServiceLocator {
  @override
  Future<void> register() async {
    locator.registerSingleton<Api>(Api());
  }
}
