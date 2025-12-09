import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/service_locator.dart';
import 'package:whering/core/ui/theme.dart';
import 'package:whering/features/user/presentation/bloc/get_user_wardrobe_cubit.dart';

import 'core/route/route.dart';
import 'features/user/presentation/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator.get<GetUserWardrobeCubit>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 883),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            navigatorKey: AppRouter.navigatorKey,
            title: 'Whering',
            theme: appTheme(),
            home: ProfileScreen(),
          );
        },
      ),
    );
  }
}
