import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class Textfielding extends StatelessWidget {
  const Textfielding(
      {super.key,
      required this.text,
      this.texticon,
      required this.containerwidth,
      required this.containerheight});
  final text;
  final containerwidth;
  final containerheight;
  final texticon;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: 15, top: 13),
      width: containerwidth,
      height: containerheight,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 235, 236, 240),
          borderRadius: BorderRadius.circular(17)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              texticon,
              color: primaryColor,
              size: 30,
            ),
          ),
          hintStyle: TextStyle(color: const Color.fromARGB(255, 142, 138, 138)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
