// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/view/calendar/calendar_view.dart';
import 'package:task_app/view/chats/chats_view.dart';

import 'package:task_app/view/drawer/widget/customdrawertitle_widget.dart';
import 'package:task_app/view/drawer/widget/drawercircle_widget.dart';
import 'package:task_app/view/home/home_view.dart';

import '../../../data/drawer_data.dart';
import '../../../res/routes/routes_name.dart';

class DrawerHeaderWidget extends StatefulWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  _DrawerHeaderWidgetState createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  int _selectedIndex = -1;



  void _onTileTap(int index, String title) {
    setState(() {
      _selectedIndex = index;
    });

    if (title == 'Chat') {
      Get.toNamed(RouteName.chat);
    } else if (title == 'Overview') {
      Get.toNamed(RouteName.home);
    } else if (title == 'Calendar') {
      Get.toNamed(RouteName.calendar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(menuItems.length, (index) {
        final item = menuItems[index];
        return SelectableListTile(
          leadingIconPath: item['iconPath'],
          title: item['title'],
          isSelected: _selectedIndex == index,
          trailing: _getTrailingWidget(item['title']),
          onTap:
              () => _onTileTap(
                index,
                item['title'],
              ), // Pass the title for navigation logic
        );
      }),
    );
  }

  Widget? _getTrailingWidget(String title) {
    if (title == 'Mail') {
      return DrawerCircleWidget(); // Show DrawerCircle for Mail
    } else if (title == 'E-Commerce') {
      return Icon(
        Icons.arrow_forward_ios,
        color: AppColor.greyColor.withOpacity(0.5),
        size: 12.sp,
      ); // Show arrow icon for E-Commerce
    }
    return null; // No trailing widget for other items
  }
}
