import 'package:get/get.dart';
import 'package:task_app/res/routes/routes_name.dart';
import 'package:task_app/view/calendar/calendar_view.dart';
import 'package:task_app/view/chats/chats_view.dart';
import 'package:task_app/view/home/home_view.dart';

class AppRoutes {
  static List<GetPage> appRoutes() => [
    GetPage(
      name: RouteName.home,
      page: () => HomeView(), // Loads HomeView
      transitionDuration: Duration(milliseconds: 200),
      transition: Transition.leftToRightWithFade, // Adds a nice transition
    ),

    GetPage(
      name: RouteName.calendar,
      page: () => CalendarView(), // Loads HomeView
      transitionDuration: Duration(milliseconds: 20),
      transition: Transition.leftToRightWithFade, // Adds a nice transition
    ),

    GetPage(
      name: RouteName.chat,
      page: () => ChatView(), // Loads HomeView
      transitionDuration: Duration(milliseconds: 20),
      transition: Transition.leftToRightWithFade, // Adds a nice transition
    ),
  ];
}
