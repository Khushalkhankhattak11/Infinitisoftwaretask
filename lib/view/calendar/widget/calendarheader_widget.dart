// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class CalendarheaderWidget extends StatefulWidget {
  const CalendarheaderWidget({super.key});

  @override
  State<CalendarheaderWidget> createState() => _CalendarheaderWidgetState();
}

class _CalendarheaderWidgetState extends State<CalendarheaderWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  bool _isDaySelected = false; // New variable to manage "Days" selection
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextStyleComponents(
            title: 'Calendar'.tr,
            weight: FontWeight.w700,
            color: AppColor.blackColor,
            size: 28.sp,
          ),
          Row(
            children: [
              Container(
                width: 279.w,
                decoration: BoxDecoration(
                  color: Color(0xffE8EAED),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _buildToggleButton(
                            'Month',
                            _calendarFormat == CalendarFormat.month &&
                                !_isDaySelected,
                            () {
                              setState(() {
                                _calendarFormat = CalendarFormat.month;
                                _isDaySelected = false; // Reset "Days"
                              });
                            },
                          ),
                          _buildToggleButton(
                            'Week',
                            _calendarFormat == CalendarFormat.week &&
                                !_isDaySelected,
                            () {
                              setState(() {
                                _calendarFormat = CalendarFormat.week;
                                _isDaySelected = false; // Reset "Days"
                              });
                            },
                          ),
                          _buildToggleButton('Days', _isDaySelected, () {
                            setState(() {
                              _isDaySelected = true;
                              _calendarFormat =
                                  CalendarFormat.week; // Needed for "Days"
                            });
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x2E0081FF),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.add, color: Colors.white),
                  onPressed: () {
                    // Add event action
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Calendar
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffE6E8EB).withOpacity(0.2),
                  blurRadius: 64.0,
                  offset: const Offset(0, 32),
                ),
              ],
            ),
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _focusedDay,
              calendarFormat:
                  _isDaySelected
                      ? CalendarFormat
                          .week // Force "Days" mode to week format
                      : _calendarFormat,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Colors.black54,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.black54,
                ),
                titleTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(color: Colors.white),
                defaultTextStyle: TextStyle(color: Colors.black),
                weekendTextStyle: TextStyle(color: Colors.black),
                outsideDaysVisible: false,
                markersMaxCount: 1,
                markerDecoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(color: Colors.black54),
                weekendStyle: TextStyle(color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
    }

  Widget _buildToggleButton(String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 78.w,
        height: 42.h,
        margin: EdgeInsets.only(right: 7.w),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ]
                  : [],
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
