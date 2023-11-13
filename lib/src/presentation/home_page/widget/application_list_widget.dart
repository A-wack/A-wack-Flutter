import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';

class ApplicationListWidget extends StatelessWidget {
  final String image, title;
  final bool choice;

  const ApplicationListWidget({
    required this.image,
    required this.title,
    required this.choice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(43.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 1075.w,
            height: 516.h,
            fit: BoxFit.cover,
          ),
          choice == true
              ? AWackFont()
                  .medium(title, 46.58, AWackColor.black)
                  .padding(top: 32.25.h, left: 50.17.w, bottom: 26.42.h)
              : AWackFont()
                  .medium(title, 46.58, AWackColor.black)
                  .padding(top: 32.25.h, left: 50.17.w, bottom: 46.58.h),
          choice == true
              ? AWackFont()
                  .light('채택되었습니다.', 35.83, AWackColor.yellow)
                  .padding(left: 50.17.w, bottom: 46.58.h)
              : const SizedBox(),
        ],
      ),
    );
  }
}
