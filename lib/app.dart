import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whering/core/ui/theme.dart';

import 'core/route/route.dart';
import 'core/shared/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
          home: const SplashScreen(),
        );
      },
    );
  }
}
