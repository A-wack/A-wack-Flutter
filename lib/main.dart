import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:a_wack_flutter/src/config/router.dart';

import 'package:a_wack_flutter/src/presentation/after_sign_up_page/provider/email_find_error.dart';
import 'package:a_wack_flutter/src/presentation/after_sign_up_page/provider/save_email_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1290, 2867),
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => SignUpEmailFindError()),
            ChangeNotifierProvider(create: (context) => SignUpSaveEmailText()),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
          ),
        );
      },
    );
  }
}
