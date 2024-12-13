import 'package:flutter/material.dart';

class RegisterTextfield extends StatelessWidget {
  const RegisterTextfield(
      {super.key,
      required this.hintText,
      required this.iconcolor,
      required this.icon,
      required this.CircleAvatarcolor});
  final String hintText;

  final Color iconcolor;
  final Color CircleAvatarcolor;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.only(left: 15),
        height: height * 0.09,
        width: width * 0.80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 253, 253),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              minRadius: 17,
              backgroundColor: CircleAvatarcolor,
              child: Icon(
                icon.icon,
                color: iconcolor,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
