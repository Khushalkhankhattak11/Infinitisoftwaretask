import 'package:flutter/material.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/view/home/widget/socialcard_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SocialcardWidget(
            avatarImage: ImageAssets.fb,
            title: "mitchell.cooper",
            subtitle: "Facebook",
            followers: '3453,49K',
            percentage: '1.43%',
            followersText: "Followers",
          ),

          SizedBox(width: 15),
          SocialcardWidget(
            avatarImage: ImageAssets.fb,
            title: "jessica.roberts",
            subtitle: "Instagram",
            followers: '453K',
            percentage: '2.15%',
            followersText: "Followers",
          ),
        ],
      ),
    );
  }
}
