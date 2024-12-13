import 'package:flutter/material.dart';
import 'package:real_state_app/core/arrow_back.dart';

class SharedRow extends StatelessWidget {
  const SharedRow({
    required this.onpress,
    super.key,
    required this.text,
  });
  final text;
  final onpress;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        ArrowBack(
          onpress: onpress,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: width * 0.19,
        ),
        IconButton(
            onPressed: () {},
            icon: Container(
              height: height * 0.06,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 218, 240),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/images/Nav Menu 02.png',
              ),
            )),
      ],
    );
  }
}
