import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/view/drawer/widget/draweheader_widget.dart';
import 'package:task_app/view/drawer/widget/drawerbottom_widget.dart';

class CustomDrawerComponents extends StatelessWidget {
  const CustomDrawerComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageAssets.logo),
              ),
              SizedBox(height: 5.h),
              DrawerHeaderWidget(),
              DrawerBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

