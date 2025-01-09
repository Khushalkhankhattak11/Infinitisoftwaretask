import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class DrawerCircleWidget extends StatelessWidget {
  const DrawerCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 20.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColor.orangeColor,
        shape: BoxShape.circle,
      ),
      child: TextStyleComponents(
        title: '8',
        size: 11.sp,
        weight: FontWeight.w700,
        color: AppColor.whiteColor,
      ),
    );
  }
}
