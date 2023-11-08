import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoImage extends StatelessWidget {
  final int width, height;

  const LogoImage({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/image/logo.svg',
      width: width.w,
      height: height.h,
    );
  }
}
