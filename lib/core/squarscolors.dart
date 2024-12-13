import 'package:flutter/material.dart';

class Squarscolors extends StatelessWidget {
  const Squarscolors({
    super.key,
    required this.Color,
    required this.text,
    required this.Iconphoto,
    required this.iconcolor,
    required this.onpresed,
  });
  final Color;
  final text;
  final Iconphoto;
  final iconcolor;
  final onpresed;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.27,
      height: height * 0.15,
      decoration:
          BoxDecoration(color: Color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onpresed,
            icon: Icon(
              Iconphoto,
            ),
            color: iconcolor,
            iconSize: 40,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
