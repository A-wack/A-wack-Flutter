import 'package:go_router/go_router.dart';

import 'package:a_wack_flutter/src/presentation/welcome_page/welcome_page_view.dart';
import 'package:a_wack_flutter/src/presentation/home_page/home_page_view.dart';
import 'package:a_wack_flutter/src/presentation/sign_in_page/sign_in_page_view.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_page_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const WelComePage(),
      routes: [
        GoRoute(
          path: 'signin',
          builder: (context, state) => const SignInPage(),
        ),
        GoRoute(
          path: 'signup',
          builder: (context, state) => const SignUpPage(),
        )
      ],
    ),
    GoRoute(
      path: '/homepage',
      builder: (_, state) => const HomePage(),
    ),
  ],
);
