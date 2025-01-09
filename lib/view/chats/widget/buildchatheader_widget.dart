import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/res/components/textstyle_components.dart';

class BuildchatheaderWidget extends StatelessWidget {
  final String name;
  const BuildchatheaderWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      contentPadding: EdgeInsets.zero,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Row(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                 
                  Color(0xffDF85FF),
                   Color(0xff4EB2FF),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Text(
                name.isNotEmpty ? name[0].toUpperCase() : '?',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleComponents(
                title: name,
                size: 15,
                weight: FontWeight.w400,
              ),
              TextStyleComponents(
                title: '6 Members, 3 Online',
                size: 15,
                weight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    )
  ;
  }
}