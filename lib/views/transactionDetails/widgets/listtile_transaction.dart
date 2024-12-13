import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class Listtiletransaction extends StatelessWidget {
  const Listtiletransaction(
      {super.key, required this.text, required this.price});
  final text;
  final price;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.9,
      height: height * 0.07,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        trailing: Text(
          price,
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 122, 121, 121),
          ),
        ),
      ),
    );
  }
}
