import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class ButtonsCustom extends StatelessWidget {
  const ButtonsCustom(
      {super.key,
      required this.text,
      this.FontWeight,
      required this.buttonwidth,
      required this.buttonheight,
      required this.onPressedbutton,
      this.CircleAvatarbutton,
      this.alignment,
      this.textcolor,
      this.buttoncolor,
      required this.buttonbordercolor,
      this.iconcircleavatar,
      this.padding});
  final String text;
  final FontWeight;
  final double buttonwidth;
  final double buttonheight;
  final onPressedbutton;
  final Alignment? alignment;
  final EdgeInsets? padding;
  final CircleAvatar? CircleAvatarbutton;
  final textcolor;
  final buttoncolor;
  final buttonbordercolor;
  final iconcircleavatar;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onPressedbutton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (CircleAvatarbutton != null)
            CircleAvatar(
              backgroundColor: purple,
              minRadius: 15,
              child: Icon(iconcircleavatar, color: primaryColor),
            ),
          if (CircleAvatarbutton != null) SizedBox(width: width * 0.02),
          Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight,
              fontSize: 17,
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        alignment: alignment,
        padding: padding,
        fixedSize: Size(buttonwidth, buttonheight),
        backgroundColor: buttoncolor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: buttonbordercolor, width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
