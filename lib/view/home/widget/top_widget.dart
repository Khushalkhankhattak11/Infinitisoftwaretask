import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextStyleComponents(
          title: "Overview",
          size: 28.sp,
          weight: FontWeight.w700,
        ),
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Color(0x00ff0000),
                blurRadius: 16,
                spreadRadius: -10,
                offset: Offset(0, 14),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              ImageAssets.progress,
              width: 20.w,
              height: 20.h,
            ),
          ),
        ),
      ],
    );
  }
}
