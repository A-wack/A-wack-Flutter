import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Awack Logo
          Center(
            child: SvgPicture.asset(
              'assets/image/logo.svg',
              width: 283.w,
              height: 100.h,
            ),
          ).padding(top: 207.83.h),

          /// 로그인 타이틀
          AWackFont()
              .semiBold('회원가입', 100.33, AWackColor.black)
              .padding(top: 43.33.h),

          Image.asset(
            'assets/image/finger.png',
            width: 537.5.w,
            height: 537.5.h,
          ).padding(top: 54.5.h),

          GestureDetector(
            onTap: () {
              context.go('/signUp/signUpEmail');
            },
            child: const AWackButton(
              textPadding: 57.33,
              textColor: AWackColor.white,
              color: AWackColor.yellow,
              text: '회원가입',
              width: 1146.67,
            ).padding(top: 100.33.h),
          ),

          /// 계정이 이미 있으신가요? 회원가입
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AWackFont().light('계정이 이미 있으신가요?', 43, AWackColor.black),
              SizedBox(width: 17.92.w),
              GestureDetector(
                onTap: () {
                  context.go('/signIn');
                },
                child: AWackFont().light('로그인', 43, AWackColor.yellow),
              ),
            ],
          ).padding(top: 71.67.h),
        ],
      ),
    );
  }
}
