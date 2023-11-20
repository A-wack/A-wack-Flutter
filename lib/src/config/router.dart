import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'package:a_wack_flutter/src/presentation/welcome_page/welcome_page.dart';
import 'package:a_wack_flutter/src/presentation/home_page/home_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_in_page/sign_in_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_email_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_validation_page.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/sign_up_info_page.dart';
import 'package:a_wack_flutter/src/presentation/application_song_page/application_song_page.dart';

CustomTransitionPage noAnimation(Widget page) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  );
}

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
              path: 'signUpEmail',
              builder: (context, state) => const SignUpEmailPage(),
            ),
            GoRoute(
              path: 'signUpValidation',
              pageBuilder: (context, state) {
                return noAnimation(const SignUpValidationPage());
              },
            ),
            GoRoute(
              path: 'signUpInfo',
              pageBuilder: (context, state) {
                return noAnimation(const SignUpInfoPage());
              },
            ),
          ],
        )
      ],
    ),
    GoRoute(
      path: '/homePage',
      builder: (_, state) => const HomePage(),
      routes: [
        GoRoute(
            path: 'applicationSong',
            builder: (context, state) => const ApplicationSongPage()),
      ],
    ),
  ],
);
