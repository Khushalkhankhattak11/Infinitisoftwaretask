import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_app/res/assets/image_assets.dart';
import 'package:task_app/res/colors/app_color.dart';
import 'package:task_app/res/components/customappbar_components.dart';
import 'package:task_app/view/chats/widget/bottomchat_widget.dart';
import 'package:task_app/view/chats/widget/buildchatheader_widget.dart';
import 'package:task_app/view/chats/widget/buildmessage_widget.dart';
import 'package:task_app/view/chats/widget/gradientMessage_widget.dart';
import 'package:task_app/view/chats/widget/secondmessagebubble_widget.dart';
import 'package:task_app/view/drawer/customdrawer_components.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = Get.arguments['name'] ?? 'Unknown';

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(),
      drawer: CustomDrawerComponents(),
      bottomNavigationBar: BottomchatWidget(),
      body: Column(
        children: [
          // Chat Header
          BuildchatheaderWidget(name: name),
          Expanded(
            child: ListView(
              children: [
                // Example Messages
                MessageBubble(
                  isSender: false,
                  name: "Jane Wilson",
                  avatar: ImageAssets.avatar,
                  time: "09:15",
                  message:
                      "Hi Jacob and Brandon, any progress on the project? 😍",
                ),
                MessageBubble(
                  isSender: true,
                  name: "Jacob Hawkins",
                  avatar: ImageAssets.avatar,
                  time: "09:20",
                  message: "Hi Jane! 👋",
                ),
                SecondMessageBubble(
                  isSender: true,
                  message:
                      "Yes. I just finished developing \n the Chat template.",
                ),

                GradientMessageBubble(isSender: true),
                MessageBubble(
                  isSender: false,
                  name: "Brandon Pena",
                  avatar: ImageAssets.avatar,
                  time: "10:52",
                  message: "Hi Jane! I’ve completed 16 of 20 \nproblems so far",
                ),

                SecondMessageBubble(
                  isSender: false,
                  message: "Today or tomorrow \n I think I'll finish it.",
                ),
                MessageBubble(
                  isSender: false,
                  name: "Jane Wilson",
                  avatar: ImageAssets.avatar,
                  time: "09:15",
                  message:
                      "It looks amazing. The customer \nwill be very satisfied. 😍",
                ),
                MessageBubble(
                  isSender: true,
                  name: "Jacob Hawkins",
                  avatar: ImageAssets.avatar,
                  time: "11:48",
                  message: "@Brandon, can you send me the \n Style Guide.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


