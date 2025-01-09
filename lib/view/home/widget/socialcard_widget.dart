// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';

class SocialcardWidget extends StatelessWidget {
  final String avatarImage;
  final String title;
  final String subtitle;
  final String followers;
  final String percentage;
  final String followersText;
 

  const SocialcardWidget({
    super.key,
    required this.avatarImage,
    required this.title,
    required this.subtitle,
    required this.followers,
    required this.percentage,
    required this.followersText,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      height: 182.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                width: 48.w,
                height: 48.h,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: SvgPicture.asset(avatarImage,fit: BoxFit.cover,),
              ),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Text(
                  followers,
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
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
                          percentage,
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
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              followersText,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
