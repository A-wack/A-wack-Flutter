import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

String font = 'Pretendard';

class AWackFont {
  Text thin(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w100,
    ));
  }

  Text light(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w300,
    ));
  }

  Text regular(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w400,
    ));
  }

  Text medium(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w500,
    ));
  }

  Text semiBold(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w600,
    ));
  }

  Text bold(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w700,
    ));
  }

  Text extraBold(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w800,
    ));
  }

  Text black(String text, num fontSize, Color color) {
    return Text(text).textStyle(TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: font,
      fontWeight: FontWeight.w900,
    ));
  }
}
