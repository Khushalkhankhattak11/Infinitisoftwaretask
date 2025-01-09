// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class GradientMessageBubble extends StatelessWidget {
  final bool isSender;

  const GradientMessageBubble({
    Key? key,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSender) // Large gradient square for receiver
            const GradientContainer(
              width: 150,
              height: 150,
              gradientColors: [Colors.lightBlueAccent, Colors.pinkAccent],
              shadow: true,
            ),

          if (!isSender) const SizedBox(width: 10),

          if (!isSender) // Small gradient squares for receiver
            Column(
              children: const [
                GradientContainer(
                  width: 75,
                  height: 75,
                  gradientColors: [Colors.purple, Colors.orange],
                ),
                SizedBox(height: 10),
                GradientContainer(
                  width: 75,
                  height: 75,
                  gradientColors: [Colors.yellow, Colors.orange],
                ),
              ],
            ),

          if (isSender) // Small gradient squares for sender
            Column(
              children: const [
                GradientContainer(
                  width: 75,
                  height: 75,
                  gradientColors: [Colors.purple, Colors.orange],
                ),
                SizedBox(height: 10),
                GradientContainer(
                  width: 75,
                  height: 75,
                  gradientColors: [Colors.yellow, Colors.orange],
                ),
              ],
            ),

          if (isSender) const SizedBox(width: 10),

          if (isSender) // Large gradient square for sender
            const GradientContainer(
              width: 150,
              height: 150,
              gradientColors: [Colors.lightBlueAccent, Colors.pinkAccent],
              shadow: true,
            ),
        ],
      ),
    );
  }
}


class GradientContainer extends StatelessWidget {
  final double width;
  final double height;
  final List<Color> gradientColors;
  final bool shadow;

  const GradientContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.gradientColors,
    this.shadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow:
            shadow
                ? [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  ),
                ]
                : null,
      ),
    );
  }
}

