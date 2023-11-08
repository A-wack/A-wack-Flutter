import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:a_wack_flutter/src/presentation/main_page/main_page_view.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const HomePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1290, 2867),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
        );
      },
    );
  }
}
