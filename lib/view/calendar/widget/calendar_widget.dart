import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class CustomScheduleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final Color color;
  final List<String> avatarUrls;

  const CustomScheduleCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.avatarUrls,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Row(
        children: [
          Column(
            children: [
              _buildTime('07:00'),
              SizedBox(height: 40.h),
              _buildTime('07:30'),
              SizedBox(height: 40.h),
              _buildTime('08:00'),
            ],
          ),
          SizedBox(width: 15.w),
          Container(
            width: 290.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                VerticalDivider(
                  color: color, // Divider color
                  thickness: 5, // Divider thickness
                  width: 40.w, // Space between divider and content
                  indent: 20, // Top padding of the divider
                  endIndent: 20, // Bottom padding of the divider
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextStyleComponents(
                        title: title,
                        size: 15.sp,
                        weight: FontWeight.w600,
                        color: Colors.black,
                      ),

                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          TextStyleComponents(
                            title: subtitle,
                            size: 15.sp,
                            weight: FontWeight.w600,
                            color: Colors.grey,
                          ),

                          SizedBox(width: 10.w),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/time.svg',
                              ), // Replace with your asset
                              SizedBox(width: 5.w),
                              TextStyleComponents(
                                title: time,
                                size: 15.sp,
                                weight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children:
                            avatarUrls
                                .map(
                                  (url) => Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    child: _buildAvatar(url),
                                  ),
                                )
                                .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTime(String time) {
    return TextStyleComponents(
      title: time,
      size: 14.sp,
      weight: FontWeight.w400,
    );
  }

  Widget _buildAvatar(String url) {
    return CircleAvatar(radius: 15.r, backgroundImage: NetworkImage(url));
  }
}
