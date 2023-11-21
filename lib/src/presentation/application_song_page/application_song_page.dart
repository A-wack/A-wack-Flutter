import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:gap/gap.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';

class ApplicationSongPage extends StatelessWidget {
  const ApplicationSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    var songTitleController = TextEditingController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AWackFont()
              .medium('기상송 신청 🎤', 71.66, AWackColor.black)
              .padding(top: 190.h, left: 103.w),
          Center(
            /// 가장 바깥쪽
            child: Container(
              decoration: BoxDecoration(
                color: AWackColor.gray,
                borderRadius: BorderRadius.circular(78.8.w),
              ),

              /// 안쪽 2개
              child: Column(
                children: [
                  /// 제목 입력란 (1번째)
                  Container(
                    decoration: BoxDecoration(
                      color: AWackColor.white,
                      borderRadius: BorderRadius.circular(28.67.w),
                    ),
                    width: 1075.w,
                    height: 180.33.h,
                    child: TextField(
                      controller: songTitleController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: '노래 제목',
                        labelStyle: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 38.83.sp,
                          fontWeight: FontWeight.w300,
                          color: AWackColor.black,
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 38.83.sp,
                        fontWeight: FontWeight.w300,
                        color: AWackColor.black,
                      ),
                    ).padding(left: 54.17.w),
                  ),
                ],
              ).padding(vertical: 50.17.h, horizontal: 50.17.w),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 250.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                context.go('/homePage');
              },
              icon: Icon(
                Icons.home,
                size: 100.w,
                color: AWackColor.gray_9999,
              ),
            ),
            IconButton(
              onPressed: () {
                context.go('/homePage/applicationSong');
              },
              icon: Icon(
                Icons.music_note,
                size: 100.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
