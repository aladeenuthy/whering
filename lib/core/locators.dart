import 'package:whering/core/core_service_locators.dart';
import 'package:whering/core/service_locator.dart';

import '../features/user/user_service_locator.dart';

class Locators {
 
  static register() async {
     List<ServiceLocator> locators = <ServiceLocator>[
    CoreServiceLocator(),
    UserServiceLocator(),
  ];
    for (final ServiceLocator item in locators) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
      await item.register();
    }
  }
}
