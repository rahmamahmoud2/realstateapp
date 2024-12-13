import 'package:flutter/material.dart';

class VideoContainers extends StatelessWidget {
  const VideoContainers(
      {super.key,
      required this.Containercolor,
      required this.Containericon,
      required this.iconcolor});
  final Containercolor;
  final Containericon;
  final iconcolor;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          width: width * 0.13,
          height: height * 0.07,
          decoration: BoxDecoration(
            color: Containercolor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
              child: Icon(
            Containericon,
            color: iconcolor,
            size: 35,
          )),
        )
      ],
    );
  }
}
