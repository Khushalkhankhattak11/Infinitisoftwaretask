import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/customappbar_components.dart';
import 'package:task_app/res/components/textstyle_components.dart';
import 'package:task_app/view/calendar/widget/calendar_widget.dart';
import 'package:task_app/view/calendar/widget/calendarheader_widget.dart';
import 'package:task_app/view/drawer/customdrawer_components.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(),
      drawer: CustomDrawerComponents(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: .3),
            CalendarheaderWidget(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: TextStyleComponents(
                title: 'Upcoming'.tr,
                weight: FontWeight.w700,
                color: AppColor.blackColor,
                size: 24.sp,
              ),
            ),

            CustomScheduleCard(
              title: 'Brandbook and Guidebook',
              subtitle: 'Design',
              time: '07:00',
              avatarUrls: [
                "https://i.pravatar.cc/100?img=1",
                "https://i.pravatar.cc/100?img=2",
                "https://i.pravatar.cc/100?img=3",
                "https://i.pravatar.cc/100?img=4",
              ],
              color: Colors.orangeAccent,
            ),

            CustomScheduleCard(
              color: AppColor.green,
              title: 'Brandbook and Guidebook',
              subtitle: 'Design',
              time: '07:00',
              avatarUrls: [
                "https://i.pravatar.cc/100?img=1",
                "https://i.pravatar.cc/100?img=2",
                "https://i.pravatar.cc/100?img=3",
                "https://i.pravatar.cc/100?img=4",
              ],
            ),

            CustomScheduleCard(
              color: AppColor.purple,
              title: 'Brandbook and Guidebook',
              subtitle: 'Design',
              time: '07:00',
              avatarUrls: [
                "https://i.pravatar.cc/100?img=1",
                "https://i.pravatar.cc/100?img=2",
                "https://i.pravatar.cc/100?img=3",
                "https://i.pravatar.cc/100?img=4",
              ],
            ),
            CustomScheduleCard(
              color: AppColor.yellow,
              title: 'Brandbook and Guidebook',
              subtitle: 'Design',
              time: '07:00',
              avatarUrls: [
                "https://i.pravatar.cc/100?img=1",
                "https://i.pravatar.cc/100?img=2",
                "https://i.pravatar.cc/100?img=3",
                "https://i.pravatar.cc/100?img=4",
              ],
            ),
          ],
        ),
      ),
    );
  }
}
