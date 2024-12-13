import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class SearchCustom extends StatelessWidget {
  const SearchCustom(
      {super.key,
      required this.Width,
      required this.text,
      required this.height});
  final Width;
  final height;
  final text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: Width,
      height: height,
      child: SearchBar(
        leading: Image.asset(
          'assets/images/Search.png',
          width: width * 0.05,
        ),
        hintText: text,
        elevation: WidgetStatePropertyAll(100),
        backgroundColor: WidgetStatePropertyAll(secondaryColor),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
      ),
    );
  }
}
