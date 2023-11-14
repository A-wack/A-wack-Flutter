import 'package:go_router/go_router.dart';

import 'package:a_wack_flutter/src/presentation/welcome_page/welcome_page.dart';
import 'package:a_wack_flutter/src/presentation/home_page/home_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_in_page/sign_in_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_page.dart';
import 'package:a_wack_flutter/src/presentation/after_sign_up_page/after_sign_up_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const WelComePage(),
      routes: [
        GoRoute(
          path: 'signIn',
          builder: (context, state) => const SignInPage(),
        ),
        GoRoute(
          path: 'signUp',
          builder: (context, state) => const SignUpPage(),
          routes: [
            GoRoute(
              path: 'afterSignUp',
              builder: (context, state) => AfterSignUpPage(),
            )
          ],
        )
      ],
    ),
    GoRoute(
      path: '/homePage',
      builder: (_, state) => const HomePage(),
    ),
  ],
);
