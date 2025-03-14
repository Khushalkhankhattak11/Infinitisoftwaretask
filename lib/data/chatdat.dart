import 'package:flutter/material.dart';
import 'package:task_app/res/colors/app_color.dart';
import '../res/assets/image_assets.dart'; // Adjust the import path as necessary

const List<Map<String, dynamic>> chatData = [
  {
    "name": "Alphaboard",
    "message": "Jane: Hello, Mark! I am wr...",
    "unreadCount": 3,
    "hmessage": "you",
    "avatar": {"color": Colors.blue, "text": "A", "image": null},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": false,
  },
  {
    "name": "Design Team",
    "message": "You: Hello. Can you drop t...",
    "unreadCount": null,
    "hmessage": "you",
    "avatar": {"color": Colors.orange, "text": "DT", "image": null},
    "isHighlighted": true,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": false,
  },
  {
    "name": "Dustin Williamson",
    "message": "Dustin is typing...",
    "unreadCount": 5,
    "hmessage": null,
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": true,
    "svgIcon": ImageAssets.edit,
    "showGreenDot": true,
  },
];

const List<Map<String, dynamic>> colorsData = [
  {"text": 'Important', "color": AppColor.orangeColor},
  {"text": 'Meeting', "color": AppColor.orangelight},
  {"text": 'Event', "color": AppColor.green},
  {"text": 'Work', "color": AppColor.purple},
  {"text": 'Other', "color": AppColor.lightcolor},
];

const List<Map<String, dynamic>> allchatData = [
  {
    "name": "Jane Wilson",
    "message": "",
    "unreadCount": null,
    "hmessage": "Hi! How are you, Steve?",
    "showGreenDot": true,
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
  },
  {
    "name": "Brandon Pena",
    "message": "",
    "unreadCount": null,
    "hmessage": "How about going somew...",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": false,
  },
  {
    "name": "Nathan Fox",
    "message": "",
    "unreadCount": null,
    "hmessage": "Hello. We have a meeting...",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": false,
  },
  {
    "name": "Jacob Hawkins",
    "message": "",
    "unreadCount": 1,
    "hmessage": "Well done!",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": true,
  },
  {
    "name": "Shane Black",
    "message": "",
    "unreadCount": null,
    "hmessage": "Paul's having a party tom...",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": true,
  },
  {
    "name": "Alphaboard",
    "message": "Jane: Hello, Mark! I am wr...",
    "unreadCount": null,
    "hmessage": "you",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": true,
  },
  {
    "name": "Alphaboard",
    "message": "Jane: Hello, Mark! I am wr...",
    "unreadCount": null,
    "hmessage": "you",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": true,
  },
  {
    "name": "Bruce Russell",
    "message": "",
    "unreadCount": 1,
    "hmessage": "Hi, any progress on the p...",
    "avatar": {"color": Colors.pink, "text": null, "image": ImageAssets.avatar},
    "isHighlighted": false,
    "showSvg": false,
    "svgIcon": null,
    "showGreenDot": true,
  },
];
