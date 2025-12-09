import 'package:whering/core/network/api.dart';
import 'package:whering/core/service_locator.dart';

class CoreServiceLocator implements ServiceLocator {
  @override
  Future<void> register() async {
   locator.registerSingleton<Api>(Api());

  }
}