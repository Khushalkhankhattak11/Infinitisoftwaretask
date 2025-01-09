import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubble extends StatelessWidget {
  final bool isSender;
  final String name;
  final String avatar;
  final String time;
  final String message;

  const MessageBubble({
    Key? key,
    required this.isSender,
    required this.name,
    required this.avatar,
    required this.time,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar for receiver messages (left side)
          if (!isSender)
            CircleAvatar(
              radius: 20,
              child: SvgPicture.asset(avatar),
            ),
          if (!isSender) SizedBox(width: 10.w),

          // Message bubble
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                // Name and timestamp
                Row(
                  mainAxisAlignment: isSender
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    if (!isSender) SizedBox(width: 4.w),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),

                // Message text
                Container(
                  decoration: BoxDecoration(
                    color: isSender ? Colors.blue : const Color(0xffF5F7FA),
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: isSender ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          if (isSender) SizedBox(width: 10.w),

          // Avatar for sender messages (right side)
          if (isSender)
            CircleAvatar(
              radius: 20,
              child: SvgPicture.asset(avatar),
            ),
        ],
      ),
    );
  }
}
