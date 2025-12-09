import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whering/features/features.dart';

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
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
