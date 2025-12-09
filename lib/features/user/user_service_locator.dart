import 'package:whering/core/service_locator.dart';

import '../../core/network/api.dart';
import 'domain/service/user_service.dart';
import 'presentation/bloc/get_user_wardrobe_cubit.dart';

class UserServiceLocator implements ServiceLocator {
  const UserServiceLocator();

  @override
  Future<void> register() async {
    locator.registerSingleton<UserService>(UserServiceImpl(api: locator.get<Api>()));
    locator.registerSingleton<GetUserWardrobeCubit>(GetUserWardrobeCubit(userService: locator.get<UserService>()));
  }
}
