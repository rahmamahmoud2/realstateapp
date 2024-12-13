import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key, required this.onpress});
  final onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios,
            color: Color.fromRGBO(74, 67, 236, 0.8)),
        onPressed: onpress,
      ),
    );
  }
}
