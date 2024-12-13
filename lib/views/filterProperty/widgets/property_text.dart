import 'package:flutter/material.dart';

class PropertyText extends StatelessWidget {
  const PropertyText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      required this.fontWeight});
  final String text;
  final double fontSize;
  final Color? color;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
