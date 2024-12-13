import 'package:flutter/material.dart';

class QuestionButtons extends StatelessWidget {
  const QuestionButtons(
      {super.key,
      required this.text,
      required this.buttonbordercolor,
      required this.backgroundcolor,
      this.textcolor});
  final text;
  final textcolor;
  final backgroundcolor;
  final buttonbordercolor;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontSize: 17),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width * 0.37,
          height * 0.07,
        ),
        backgroundColor: backgroundcolor,
        side: BorderSide(color: buttonbordercolor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
