import 'package:a_wack_flutter/src/core/utils/rotate_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_button.dart';

class WelComePage extends StatelessWidget {
  const WelComePage({super.key});

  @override
  Widget build(BuildContext context) {
    PretendardFont ptdFont = PretendardFont();

    return Scaffold(
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              /// 해 아이콘
              RotateAnimation(
                child: Image.asset('assets/image/sun.png',
                    width: 788.33.w, height: 788.33.h),
              ).padding(top: 631.03.h, left: 650.03.h),

              /// 전체 화면
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Logo
                  SvgPicture.asset(
                    'assets/image/logo.svg',
                    width: 283.w,
                    height: 100.h,
                  ).padding(left: 100.33.w, top: 390.58.h),

                  ///인사말
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ptdFont.medium('환영합니다', 114.67, AWackColor.black),
                      ptdFont.medium('DSM 기상송 신청 서비스', 57.33, AWackColor.black),
                    ],
                  ).padding(left: 100.33.w, top: 35.83.h),

                  /// 시작하기 버튼
                  const AWackButton(
                    width: 1146.67,
                    color: AWackColor.yellow,
                    text: '시작하기',
                    textColor: AWackColor.white,
                    textPadding: 57.33,
                  ).center().padding(top: 932.83.h),

                  /// 로그인 버튼
                  const AWackButton(
                    width: 1146.67,
                    color: AWackColor.gray,
                    text: '로그인',
                    textColor: AWackColor.black,
                    textPadding: 57.33,
                  ).center().padding(top: 35.92.h),
                ],
              ),
            ],
          )),
    );
  }
}
