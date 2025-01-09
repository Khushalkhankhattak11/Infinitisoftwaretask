import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondMessageBubble extends StatelessWidget {
  final bool isSender;
  final String message;

  const SecondMessageBubble({
    Key? key,
    required this.isSender,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 2.h),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isSender) SizedBox(width: 10.w),

          // Message bubble
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),

                // Message text
                Container(
                  decoration: BoxDecoration(
                    color: isSender ? Colors.blue : const Color(0xffF5F7FA),
                    borderRadius: BorderRadius.circular(24),
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
        ],
      ),
    );
  }
}
