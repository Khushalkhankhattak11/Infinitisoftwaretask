import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_app/res/getx_loclization/languages.dart';
import 'package:task_app/res/routes/routes_name.dart';

import 'res/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(375, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
           translations: TransLanguage(),
          locale: const Locale('en', 'US'),
          title: 'Tasks',
          initialRoute: RouteName.home, // Set initial route
          getPages: AppRoutes.appRoutes(), // Use defined routes
        );
      },
    );
  }
}
