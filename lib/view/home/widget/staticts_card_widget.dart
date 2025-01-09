// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/components/customdropdown_widget.dart';
import 'package:task_app/view/charts/statictbar_view.dart';
import 'package:task_app/view/home/widget/statisticcard_text_widget.dart';

class StatictsCardWidget extends StatefulWidget {
  const StatictsCardWidget({super.key});

  @override
  State<StatictsCardWidget> createState() => _StatictsCardWidgetState();
}

class _StatictsCardWidgetState extends State<StatictsCardWidget> {
  String selectedValue = 'This Week';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Statistics",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),

          SizedBox(height: 10.h),
          CustomDropdown(
            selectedValue: 'This Week',
            onChanged: (String? newValue) {},
            width:
                400.w, // Provide a specific width or omit this to use the default
          ),
          SizedBox(height: 10.h),
          StatisticcardTextWidget(),
          SizedBox(height: 25.h),
          Expanded(child: StatictbarView()),
        ],
      ),
    );
  }
}
