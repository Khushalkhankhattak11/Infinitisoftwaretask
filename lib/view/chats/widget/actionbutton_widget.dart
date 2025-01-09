import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final EdgeInsetsGeometry padding;

  const ActionButton({
    Key? key,
    required this.icon,
    this.iconSize = 20.0, // Default icon size
    this.backgroundColor = const Color(0xffF5F7FA), // Default background color
    this.iconColor = Colors.grey, // Default icon color
    this.padding = const EdgeInsets.all(12), // Default padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
