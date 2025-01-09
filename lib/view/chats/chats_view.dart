import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_app/data/chatdat.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/customappbar_components.dart';
import 'package:task_app/view/chats/message_view.dart';
import 'package:task_app/view/drawer/customdrawer_components.dart';
import 'package:task_app/res/components/textstyle_components.dart';
import 'package:task_app/view/chats/widget/allchatwidget.dart';

import '../chats/widget/ChatTileWidget .dart'; // Import the ChatTileWidget

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(),

      drawer: CustomDrawerComponents(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: .4),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ), // Adjust the padding here
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(ImageAssets.search),
                  ),
                ),
                hintText: "Search...",
                hintStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ), // Adjust vertical and horizontal padding to align text
              ),
            ),
            // Pinned Section
            Divider(thickness: .4),

            /// pinned chats
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextStyleComponents(
                    title: 'PINNED',
                    weight: FontWeight.w600,
                    color: AppColor.greyColor,
                    size: 15.sp,
                  ),
                  SizedBox(height: 5.h),

                  // Chat List
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: chatData.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(
                              () => ChatScreen(),
                              arguments: {
                                'name': allchatData[index]['name'],
                                'avatar': allchatData[index]['avatar'],
                              },
                            );
                          },
                          child: ChatTileWidget(data: chatData[index]),
                        ),
                  ),
                ],
              ),
            ),

            /// All Chats
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextStyleComponents(
                    title: "All Messages",
                    size: 15.sp,
                    weight: FontWeight.w600,
                    color: AppColor.greyColor,
                  ),
                  SizedBox(height: 5.h),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: allchatData.length,
                    itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(
                              () => ChatScreen(),
                              arguments: {
                                'name': allchatData[index]['name'],
                                'avatar': allchatData[index]['avatar'],
                              },
                            );
                          },
                          child: AllChatWidget(data: allchatData[index]),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
