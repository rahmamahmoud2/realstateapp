import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class Circles extends StatelessWidget {
  const Circles({super.key, required this.circleicon, required this.text});
  final circleicon;
  final text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 219, 220, 239),
          maxRadius: 20,
          child: Icon(
            circleicon,
            color: primaryColor,
            size: 20,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
