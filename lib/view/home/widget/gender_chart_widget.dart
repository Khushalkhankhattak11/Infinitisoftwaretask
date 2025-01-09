import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/customcircle_componets.dart';


class GenderChartWidget extends StatelessWidget {
  const GenderChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 10.r,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.grey),
              ],
            ),
            SizedBox(height: 40.h),
            Stack(
              alignment: Alignment.center,
              children: [
                // Yellow Arc
                CustomPaint(
                  size: const Size(200, 200),
                  painter: DonutChartPainter(
                    startAngle: 0,
                    sweepAngle: 208, // Yellow Arc covering 58%
                    color: Colors.amber.shade600,
                  ),
                ),
                // First White Gap (after Yellow Arc)
                CustomPaint(
                  size: const Size(200, 200),
                  painter: DonutChartPainter(
                    startAngle: 208, // Directly after Yellow Arc
                    sweepAngle: 4, // Thin White Gap
                    color: Colors.white,
                  ),
                ),
                // Purple Arc
                CustomPaint(
                  size: const Size(200, 200),
                  painter: DonutChartPainter(
                    startAngle: 212, // Starts after the white gap
                    sweepAngle: 148, // Purple Arc covering 42%
                    color: Colors.deepPurple,
                  ),
                ),
                // Second White Gap (after Purple Arc)
                CustomPaint(
                  size: const Size(200, 200),
                  painter: DonutChartPainter(
                    startAngle: 0, // Directly after Purple Arc
                    sweepAngle: 1, // Thin White Gap
                    color: Colors.white,
                  ),
                ),
                // Center Emoji
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text("👩", style: TextStyle(fontSize: 36)),
                ),
                // Yellow Percentage
                Positioned(
                  left: 16,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "58%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                // Purple Percentage
                Positioned(
                  right: 16,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "42%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 45.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomcircleComponets(
                  title: 'Male : ',
                  subtite: "352K",
                  color: AppColor.purple,
                ),
                CustomcircleComponets(
                  title: 'Female : ',
                  subtite: "834K",
                  color: AppColor.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Donut Chart Painter
class DonutChartPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;
  final Color color;

  DonutChartPainter({
    required this.startAngle,
    required this.sweepAngle,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 15
          ..strokeCap = StrokeCap.round;

    final Rect rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    canvas.drawArc(
      rect,
      (startAngle - 250) * 3.14159 / 180,
      sweepAngle * 3.14159 / 180,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
