import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:gap/gap.dart';

import 'package:a_wack_flutter/src/core/utils/font_text.dart';
import 'package:a_wack_flutter/src/core/utils/a_wack_color.dart';
import 'package:a_wack_flutter/src/core/utils/tdd_list.dart';

import 'package:a_wack_flutter/src/presentation/home_page/widget/today_song_widget.dart';
import 'package:a_wack_flutter/src/presentation/home_page/widget/application_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// AppBar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 오늘의 기상송 입니다!
              Row(
                children: [
                  AWackFont().medium('오늘의 ', 71.667, AWackColor.black),
                  AWackFont().medium('기상송', 71.667, AWackColor.yellow),
                  AWackFont().medium('입니다!', 71.667, AWackColor.black),
                ],
              ),

              /// 날씨 아이콘
              const Icon(Icons.sunny).padding(right: 107.w),
            ],
          ).padding(top: 240.h, left: 108.w),

          /// 오늘의 2개의 기상송 탭
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TodaySongWidget().padding(
                  horizontal: 50.17.w,
                  vertical: 50.17.h,
                ),

                /// 오른쪽 youtube
                const TodaySongWidget().padding(right: 50.15.w),
              ],
            ).decorated(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(78.83.w),
            ),
          ).padding(top: 36.08.h),

          /// 나의 신청 목록
          AWackFont()
              .medium('나의 신청 목록', 71.67, AWackColor.black)
              .padding(left: 108.w, top: 100.08.h),

          /// 나의 신청 목록 리스트
          Padding(
            padding: EdgeInsets.fromLTRB(57.33.w, 36.08.h, 57.33.w, 0.h),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50.17.w, 50.17.h, 50.17.w, 50.17.h),
              child: SizedBox(
                height: 1470.h,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: applicationList.length,
                  separatorBuilder: (context, index) => Gap(21.5.h),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 50.17.h),
                      child: ApplicationListWidget(
                        image: applicationList[index]['image'],
                        title: applicationList[index]['singTitle'],
                        choice: applicationList[index]['choice'],
                      ),
                    );
                  },
                ),
              ),
            ).decorated(
              color: AWackColor.gray,
              borderRadius: BorderRadius.circular(93.2.w),
            ),
          ),

          ///
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
              ),
            ),
            IconButton(
              onPressed: () {
                context.go('/homePage/applicationSong');
              },
              icon: Icon(
                Icons.music_note,
                size: 100.w,
                color: AWackColor.gray_9999,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
