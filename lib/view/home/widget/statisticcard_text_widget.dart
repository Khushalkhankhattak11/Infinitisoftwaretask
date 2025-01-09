// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class StatisticcardTextWidget extends StatelessWidget {
  const StatisticcardTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return       Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyleComponents(
                    title: 'Share',
                    size: 15.sp,
                    weight: FontWeight.w400,
                    color: AppColor.grey1
                  ),
                   TextStyleComponents(
                    title: 'Likes',
                    size: 15.sp,
                     color: AppColor.grey1,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyleComponents(
                    title: '19,042',
                    size: 28.sp,
                    weight: FontWeight.w600,
                  ),
                  Padding(
                  padding: EdgeInsets.only(left: 1.w),
                  child: Container(
                    width: 87.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImageAssets.vector8),
                        SizedBox(width: 10.w),
                        Text(
                          '4.85%',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.greenColor
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                   TextStyleComponents(
                    title: '34,310',
                     size: 28.sp,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          )
       ;
  }
}