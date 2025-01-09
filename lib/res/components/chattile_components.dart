// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'textstyle_components.dart';

class ChatTileComponets extends StatelessWidget {
  final Widget avatar;
  final String name;
  final String message;
  String? hmessage;
  final int? unreadCount;
  final bool isHighlighted;
  final bool showSvg;
  final String? svgIcon;
  final bool showGreenDot; // Add flag to control the green dot

  ChatTileComponets({
    Key? key,
    required this.avatar,
    required this.name,
    required this.message,
    this.hmessage,
    this.unreadCount,
    this.isHighlighted = false,
    this.showSvg = false,
    this.svgIcon,
    this.showGreenDot = false, // Default to false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
       
        decoration: BoxDecoration(
          color: isHighlighted ? AppColor.whiteColor : AppColor.unselectColor,
          borderRadius: isHighlighted ?BorderRadius.circular(14.r):BorderRadius.circular(14.r),
        ),
        child: ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              avatar,
              if (showGreenDot)
                Positioned(
                  right: 2.w, // Adjust the position of the dot
                  bottom:1.h, // Adjust the position of the dot
                  child: Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5), // Add border for better visibility
                    ),
                  ),
                ),
            ],
          ),
          title: TextStyleComponents(
            title: name,
            color: AppColor.blackColor,
            size: 15.sp,
            weight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Row(
            children: [
              if (showSvg && svgIcon != null)
                SvgPicture.asset(svgIcon!, width: 18.w, height: 18.h),
              if (!showSvg)
                TextStyleComponents(
                  title: hmessage,
                  color: AppColor.greyColor,
                 
                  weight: FontWeight.w400,
                  size: 11.sp,
                  overflow: TextOverflow.ellipsis,
                ),
              SizedBox(width: 3.w),
              TextStyleComponents(
                title: message,
                color: AppColor.greyColor,
              
                size: 11.sp,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          trailing: unreadCount != null
              ? CircleAvatar(
                  radius: 12,
                  backgroundColor: AppColor.orangeColor,
                  child: TextStyleComponents(
                    title: unreadCount.toString(),
                    color: AppColor.whiteColor,
                    size: 11.sp,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
