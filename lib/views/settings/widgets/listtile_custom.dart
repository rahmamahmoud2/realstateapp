import 'package:flutter/material.dart';

class ListtileCustom extends StatelessWidget {
  const ListtileCustom(
      {super.key,
      required this.backcolor,
      required this.text,
      required this.circleicon,
      required this.iconcolor,
      required this.onpress});
  final backcolor;
  final text;
  final circleicon;
  final onpress;
  final iconcolor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: backcolor,
          maxRadius: 23,
          child: Icon(
            circleicon,
            color: iconcolor,
            size: 26,
          )),
      title: Text(text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      trailing: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
          color: const Color.fromARGB(255, 114, 111, 111),
        ),
        onPressed: onpress,
      ),
    );
  }
}
