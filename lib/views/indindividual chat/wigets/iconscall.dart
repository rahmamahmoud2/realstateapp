import 'package:flutter/material.dart';

class Iconscall extends StatelessWidget {
  const Iconscall(
      {super.key,
      required this.containercolor,
      required this.iconcolor,
      required this.iconshape});

  final containercolor;
  final iconcolor;
  final iconshape;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        width: width * 0.13,
        height: height * 0.05,
        decoration: BoxDecoration(
            color: containercolor, borderRadius: BorderRadius.circular(15)),
        child: Icon(
          iconshape,
          size: 25,
          color: iconcolor,
        ));
  }
}
