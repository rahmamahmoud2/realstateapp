import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.hintText,
    required this.iconcolor,
    required this.icon,
    required this.CircleAvatarcolor,
  });
  final String hintText;
  final Color iconcolor;
  final Color CircleAvatarcolor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        CircleAvatar(
          backgroundColor: CircleAvatarcolor,
          child: Icon(
            icon.icon,
            color: iconcolor,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
