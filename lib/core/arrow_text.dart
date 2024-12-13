import 'package:flutter/material.dart';

class ArrowText extends StatelessWidget {
  const ArrowText({super.key, required this.onpress, required this.text});
  final onpress;
  final text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: Color.fromRGBO(74, 67, 236, 0.8)),
            onPressed: onpress,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
