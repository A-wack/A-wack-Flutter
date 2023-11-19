import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:provider/provider.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_button.dart';

import 'package:a_wack_flutter/src/presentation/sign_up_page/provider/save_email_text.dart';

class SignUpInfoPage extends StatelessWidget {
  const SignUpInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var saveEmailText = Provider.of<SignUpSaveEmailText>(context);

    var nameController = TextEditingController();
    var emailController = TextEditingController(text: saveEmailText.emailText);
    var passwordController = TextEditingController();
    var rePasswordController = TextEditingController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// 상단 AppBar
          Stack(
            children: [
              /// 뒤로가기 버튼
              GestureDetector(
                onTap: () {
                  context.go('/signUp');
                },
                child: SvgPicture.asset(
                  'assets/image/back_arrow.svg',
                  width: 172.w,
                  height: 172.h,
                ).padding(top: 179.17.h, left: 64.5.w),
              ),
              Center(
                child: Column(
                  children: [
                    /// 로고
                    SvgPicture.asset(
                      'assets/image/logo.svg',
                      width: 283.w,
                      height: 100.h,
                    ).padding(top: 207.83.h),

                    /// 로그인 타이틀
                    AWackFont()
                        .semiBold('회원가입', 100.33, AWackColor.black)
                        .padding(top: 43.33.h),
                  ],
                ),
              ),
            ],
          ),

          /// 이름 textField
          Padding(
            padding: EdgeInsets.fromLTRB(71.67.w, 86.h, 71.67.w, 0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(35.83.w),
              ),
              child: Center(
                child: TextField(
                  controller: nameController,
                  style: TextStyle(
                    fontSize: 57.33.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '이름',
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

          /// 이메일 textField
          Padding(
            padding: EdgeInsets.fromLTRB(71.67.w, 71.67.h, 71.67.w, 0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(35.83.w),
              ),
              child: Center(
                child: TextField(
                  readOnly: true,
                  controller: emailController,
                  style: TextStyle(
                    color: AWackColor.gray_9999,
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

          /// 비밀번호 textField
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

          /// 비밀번호 재입력 textField
          Padding(
            padding: EdgeInsets.fromLTRB(71.67.w, 71.67.h, 71.67.w, 0.h),
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(35.83.w),
              ),
              child: Center(
                child: TextField(
                  controller: rePasswordController,
                  style: TextStyle(
                    fontSize: 57.33.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: '비밀번호 재입력',
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

          /// 회원가입 버튼
          GestureDetector(
            onTap: () {
              context.go('/homePage');
            },
            child: const AWackButton(
              textPadding: 57.33,
              textColor: AWackColor.white,
              color: AWackColor.yellow,
              text: '회원가입',
              width: 1146.67,
            ).padding(top: 143.33.h),
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
