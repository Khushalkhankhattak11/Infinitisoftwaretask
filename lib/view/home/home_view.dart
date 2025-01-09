// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/res/components/customappbar_components.dart';
import 'package:task_app/view/charts/active_chart_view.dart';
import 'package:task_app/view/charts/verticalchart_view.dart';
import 'package:task_app/view/drawer/customdrawer_components.dart';
import 'package:task_app/view/home/widget/card_widget.dart';
import 'package:task_app/view/home/widget/dropdown_widget.dart';
import 'package:task_app/view/home/widget/gender_chart_widget.dart';
import 'package:task_app/view/home/widget/staticts_card_widget.dart';
import 'package:task_app/view/home/widget/top_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(),

      drawer: CustomDrawerComponents(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(thickness: 0.5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TopWidget
                  TopWidget(),
                  SizedBox(height: 15.h),

                  /// DropDownWidget
                  DropdownWidget(),
                  SizedBox(height: 15.h),

                  /// CardWidget
                  CardWidget(),
                  SizedBox(height: 15.h),

                  /// Vertical widget
                  VerticalchartView(),
                  SizedBox(height: 15.h),

                  ///  GenderChartWidget
                  GenderChartWidget(),
                  SizedBox(height: 15.h),

                  ///ActiveChartView
                  ActiveChartView(),
                  SizedBox(height: 15.h),

                  /// StatictsCardWidget
                  StatictsCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
