// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';
class SelectableListTile extends StatelessWidget {
  final String leadingIconPath;
  final String title;
  final Widget? trailing;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableListTile({
    Key? key,
    required this.leadingIconPath,
    required this.title,
    this.trailing,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
           color: isSelected ? AppColor.blue.withOpacity(0.3) : Colors.transparent,
           borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SvgPicture.asset(leadingIconPath),
            title: TextStyleComponents(
              title: title,
              size: 15.sp,
              weight: FontWeight.w600,
              color: isSelected ?AppColor.blue: AppColor.blackColor,
            ),
            trailing: isSelected
                ? trailing 
                : trailing,
          ),
        ),
      ),
    );
  }
}
