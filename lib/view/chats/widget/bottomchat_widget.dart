import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/view/chats/widget/actionbutton_widget.dart';

class BottomchatWidget extends StatelessWidget {
  const BottomchatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Input field with avatar and send button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: AppColor.backgroundColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                // Placeholder for the Avatar
                CircleAvatar(child: SvgPicture.asset(ImageAssets.avatar)),
                const SizedBox(width: 10),
                // Placeholder for TextField
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F7FA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Type a message...",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Placeholder for Send Button
                CircleAvatar(child: SvgPicture.asset(ImageAssets.send)),
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ActionButton(icon: Icons.emoji_emotions),
              const SizedBox(width: 10),
              ActionButton(icon: Icons.attach_file),
              const SizedBox(width: 10),
              ActionButton(icon: Icons.image),
            ],
          ),
        ],
      ),
    );
  }
}
