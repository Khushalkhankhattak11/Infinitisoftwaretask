import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class DrawerCustomRowWidget extends StatelessWidget {
  final Color circleColor;
  final String text;

  const DrawerCustomRowWidget({
    Key? key,
    required this.circleColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15.w,
          height: 15.h,
          decoration: BoxDecoration(
            color: circleColor, // Dynamic color passed via parameter
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 10.w),
        TextStyleComponents(title: text, size: 15.sp, weight: FontWeight.w400),
      ],
    );
  }
}
