import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatictbarView extends StatelessWidget {
  const StatictbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 30,
        minY: 0,
        groupsSpace: 20, // Spacing between groups
        barGroups: [
          makeGroupData(0, [20.65, 5.55, 16.4]), // Data for Monday
          makeGroupData(1, [22, 17, 24]), // Data for Tuesday
          // Data for Wednesday
          // Data for Friday
        ],
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true, reservedSize: 30),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    days[value.toInt()],
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                );
              },
            ),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            //tooltipBgColor: Colors.white,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              List<String> labels = ['15.650', '2.550', '2.400'];
              return BarTooltipItem(
                labels[rodIndex],
                TextStyle(
                  color: rod.color ?? Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, List<double> yValues) {
    return BarChartGroupData(
      x: x,
      barRods:
          yValues.asMap().entries.map((entry) {
            int index = entry.key;
            double y = entry.value;
            Color barColor;

            // Assign colors based on index (Purple, Yellow, Orange)
            switch (index) {
              case 0:
                barColor = Colors.deepPurple;
                break;
              case 1:
                barColor = Colors.yellow.shade700;
                break;
              case 2:
                barColor = Colors.orange;
                break;
              default:
                barColor = Colors.grey;
            }

            return BarChartRodData(
              toY: y,
              color: barColor,
              width: 10.w,
              borderRadius: BorderRadius.circular(4.r),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 40, // Maximum Y value
                color: Colors.transparent,
              ),
            );
          }).toList(),
    );
  }
}
