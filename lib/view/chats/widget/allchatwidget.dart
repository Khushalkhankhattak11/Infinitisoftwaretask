import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/res/components/chattile_components.dart';

class AllChatWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const AllChatWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatTileComponets(
      avatar:
          data['avatar']['image'] != null
              ? CircleAvatar(
                backgroundColor: data['avatar']['color'],
                child: SvgPicture.asset(data['avatar']['image']),
              )
              : Container(
                width: 40.0, // Match CircleAvatar size
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffDF85FF),
                      Color(0xff4EB2FF), // Add your desired colors
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    data['avatar']['text'] ?? '',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),

      name: data['name'],
      message: data['message'],
      unreadCount: data['unreadCount'],
      hmessage: data['hmessage'],
      isHighlighted: data['isHighlighted'] ?? false,
      showSvg: data['showSvg'] ?? false,
      svgIcon: data['svgIcon'],
      showGreenDot: data['showGreenDot'] ?? false,
    );
  }
}
