import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class CustomDropdown extends StatelessWidget {
  final String selectedValue;
  final void Function(String?) onChanged;
  final double? width;

  const CustomDropdown({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
    this.width, // Optional width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity, // Use provided width or fallback to double.infinity
      height: 55.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: SvgPicture.asset(
            ImageAssets.arrowDown, // Path to your SVG file
            height: 20.h,
            width: 20.w,
          ),
          onChanged: onChanged,
          items: <String>['This Week'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: TextStyleComponents(
                title: value,
                size: 15.sp,
                weight: FontWeight.w400,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
