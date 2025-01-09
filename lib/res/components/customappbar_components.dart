import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
     backgroundColor: AppColor.backgroundColor,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: SvgPicture.asset(ImageAssets.menuIcon),
          );
        },
      ),
      title: Row(
        children: [
          const Spacer(),
          SvgPicture.asset(ImageAssets.search),
          SizedBox(width: 20.w),
          SvgPicture.asset(ImageAssets.setting),
          SizedBox(width: 20.w),
          SvgPicture.asset(ImageAssets.notification),
          SizedBox(width: 30.w),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: SvgPicture.asset(ImageAssets.avatar),
          ),
          SizedBox(width: 5.w),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
