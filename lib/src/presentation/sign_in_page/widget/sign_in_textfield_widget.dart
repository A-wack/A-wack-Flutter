import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

class SignInTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const SignInTextFieldWidget({
    required this.label,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F9),
        borderRadius: BorderRadius.circular(35.83.w),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          onChanged: (value) {
            print(value);
          },
          style: TextStyle(
            fontSize: 57.33.sp,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 57.33.sp,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w300,
            ),
          ),
        ).padding(left: 53.75.w),
      ),
    );
  }
}
