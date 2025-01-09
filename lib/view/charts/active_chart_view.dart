// ignore_for_file: deprecated_member_use

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ActiveChartView extends StatelessWidget {
  const ActiveChartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          // Title and Options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Activity",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
          SizedBox(height: 40.h),
          Expanded(
            child: Container(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    drawVerticalLine: false,
                    horizontalInterval: 10,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.3),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: 10,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 32,
                        getTitlesWidget: (value, meta) {
                          const days = ['M', 'T', 'W', 'T', 'F'];
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              days[value.toInt()],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border(
                      left: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                  ),
                  minX: 0,
                  maxX: 4,
                  minY: 0,
                  maxY: 40,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 8),
                        FlSpot(1, 20),
                        FlSpot(2, 9),
                        FlSpot(3, 25),
                        FlSpot(4, 30),
                      ],
                      isCurved: true,
                      gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.orange],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      dotData: FlDotData(show: true),
                      barWidth: 3,
                    ),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      tooltipRoundedRadius: 8,
                      fitInsideHorizontally: true,
                      fitInsideVertically: true,
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((touchedSpot) {
                          return LineTooltipItem(
                            '\$${touchedSpot.y.toStringAsFixed(3)}\n',
                            TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '23 August, 2021',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          );
                        }).toList();
                      },
                    ),

                    handleBuiltInTouches: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
