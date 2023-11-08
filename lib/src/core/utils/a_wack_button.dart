import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';

PretendardFont font = PretendardFont();

class AWackButton extends StatelessWidget {
  final String text;
  final num width, textPadding;
  final Color color, textColor;

  const AWackButton({
    required this.textPadding,
    required this.textColor,
    required this.color,
    required this.text,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28.7.w),
      ),
      child: Center(
        child: font
            .medium(text, 57.33, textColor)
            .padding(vertical: textPadding.h),
      ),
    );
  }
}
