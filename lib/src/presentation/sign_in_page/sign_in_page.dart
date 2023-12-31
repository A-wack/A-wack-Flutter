import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              .semiBold('로그인', 100.33, AWackColor.black)
              .padding(top: 43.33.h),

          /// 이메일 TextField
          Padding(
            padding: EdgeInsets.fromLTRB(71.67.w, 86.h, 71.67.w, 0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(35.83.w),
              ),
              child: Center(
                child: TextField(
                  controller: emailController,
                  style: TextStyle(
                    fontSize: 57.33.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '이메일',
                    labelStyle: TextStyle(
                      fontSize: 57.33.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ).padding(left: 53.75.w),
              ),
            ),
          ),

          /// 비밀번호 TextField
          Padding(
            padding: EdgeInsets.fromLTRB(71.67.w, 71.67.h, 71.67.w, 0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(35.83.w),
              ),
              child: Center(
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(
                    fontSize: 57.33.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '비밀번호',
                    labelStyle: TextStyle(
                      fontSize: 57.33.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ).padding(left: 53.75.w),
              ),
            ),
          ),

          /// 이메일 또는 비밀번호를 확인해 주세요
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AWackFont()
                  .light('이메일 또는 비밀번호를 확인해주세요.', 45, AWackColor.red)
                  .padding(left: 125.42.w, top: 17.92.h),
            ],
          ),

          /// 로그인 버튼
          GestureDetector(
            onTap: () {
              context.go('/homepage');
            },
            child: const AWackButton(
              textPadding: 57.33,
              textColor: AWackColor.white,
              color: AWackColor.yellow,
              text: '로그인',
              width: 1146.67,
            ).padding(top: 89.58.h),
          ),

          /// 계정이 없으신가요? 회원가입
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AWackFont().light('계정이 없으신가요?', 43, AWackColor.black),
              SizedBox(width: 17.92.w),
              GestureDetector(
                onTap: () {
                  context.go('/signUp');
                },
                child: AWackFont().light('회원가입', 43, AWackColor.yellow),
              ),
            ],
          ).padding(top: 71.67.h),
        ],
      ),
    );
  }
}
