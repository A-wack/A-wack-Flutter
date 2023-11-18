import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:provider/provider.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';

import 'package:a_wack_flutter/src/presentation/sign_up_page/provider/email_find_error.dart';
import 'package:a_wack_flutter/src/presentation/sign_up_page/provider/save_email_text.dart';

class SignUpValidationPage extends StatelessWidget {
  const SignUpValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailFindError = Provider.of<SignUpEmailFindError>(context);
    var saveEmailText = Provider.of<SignUpSaveEmailText>(context);

    var emailController = TextEditingController(text: saveEmailText.emailText);
    var validationController = TextEditingController();

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

          /// 이메일 textField
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

          /// @dsm.hs.kr의 이메일 형식이 아닙니다.
          emailFindError.state == true
              ? const SizedBox.shrink()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AWackFont()
                        .light('@dsm.hs.kr의 이메일 형식이 아닙니다.', 45, AWackColor.red)
                        .padding(left: 125.42.w, top: 17.92.h),
                  ],
                ),

          /// Row Row Row Row Row Row Row Row Row Row Row
          Padding(
            padding: emailFindError.state == true
                ? EdgeInsets.fromLTRB(75.25.w, 46.59.h, 75.25.w, 0.h)
                : EdgeInsets.fromLTRB(75.25.w, 25.08.h, 75.25.w, 0.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// 인증코드 입력
                Container(
                  width: 670.08.w,
                  height: 200.67.h,
                  decoration: BoxDecoration(
                    color: AWackColor.gray,
                    borderRadius: BorderRadius.circular(35.83.w),
                  ),
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      controller: validationController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ],
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                /// check button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200.67.w,
                    height: 200.67.h,
                    decoration: BoxDecoration(
                      color: AWackColor.gray,
                      borderRadius: BorderRadius.circular(35.8.w),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/image/check.svg',
                        width: 86.w,
                        height: 86.h,
                      ),
                    ),
                  ),
                ),

                /// send button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200.67.w,
                    height: 200.67.h,
                    decoration: BoxDecoration(
                      color: AWackColor.gray,
                      borderRadius: BorderRadius.circular(35.8.w),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/image/send.svg',
                        width: 86.w,
                        height: 86.h,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AWackFont()
                  .light('인증번호가 일치하지 않습니다.', 45, AWackColor.red)
                  .padding(left: 125.42.w, top: 17.92.h),
            ],
          ),

          /// 다음으로 버튼
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  emailFindError.findError(emailController.text);
                  saveEmailText.save(emailController.text);
                  context.go('/signUp/signUpInfo');
                },
                child: Container(
                  width: 358.33.w,
                  decoration: BoxDecoration(
                    color: AWackColor.yellow,
                    borderRadius: BorderRadius.circular(35.83.w),
                  ),
                  child: Center(
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AWackColor.white,
                    ).padding(vertical: 40.h),
                  ),
                ),
              )
            ],
          ).padding(top: 25.08.h, right: 68.08.w)
        ],
      ),
    );
  }
}
