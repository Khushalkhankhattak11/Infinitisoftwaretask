import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:task_app/data/chatdat.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';
import 'package:task_app/view/drawer/widget/drawercustomrow_widget.dart';

class DrawerBottomWidget extends StatelessWidget {
  const DrawerBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextStyleComponents(
                title: 'Calendars'.tr,
                size: 15.sp,
                color: AppColor.greyColor,
              ),
              Icon(Icons.add, color: AppColor.greyColor, size: 20.sp),
            ],
          ),
          ListView.builder(
            itemCount: colorsData.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: DrawerCustomRowWidget(
                  circleColor:
                      colorsData[index]['color'], // Pass color from colorsData
                  text: colorsData[index]['text'].toString(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
