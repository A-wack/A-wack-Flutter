import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';

class TodaySongWidget extends StatelessWidget {
  const TodaySongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28.67.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// youtube logo
              SvgPicture.asset(
                'assets/image/youtube.svg',
                width: 82.42.w,
                height: 56.98.h,
              ).padding(left: 39.42.w),

              /// youtube로 확인 하기
              AWackFont()
                  .light('Youtube로 확인하기', 35.83, AWackColor.black)
                  .padding(left: 25.08.w, right: 50.17.w),
            ],
          ).padding(top: 42.h, bottom: 63.68.h),

          /// 클릭 시 유튜브로 이동합니다.
          Padding(
            padding: EdgeInsets.only(
              top: 74.08.h,
              left: 49.5.w,
              bottom: 53.17.h,
            ),
            child: AWackFont().regular(
              '클릭 시 유튜브로 이동합니다.',
              28.67,
              AWackColor.more_gray,
            ),
          ),
        ],
      ),
    );
  }
}
