import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class CustomcircleComponets extends StatelessWidget {
  final String title;
  final String subtite;
  final Color color;
  const CustomcircleComponets({super.key, required this.title, required this.subtite, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 14.w,
          height: 14.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color),
          ),
        ),
        SizedBox(width: 10.w),
        TextStyleComponents(
          title: title,
          size: 15.sp,
          weight: FontWeight.w400,
        ),
        TextStyleComponents(
          title: subtite,
          size: 18.sp,
          color: AppColor.blackColor,
          weight: FontWeight.w600,
        ),
      ],
    );
  }
}
