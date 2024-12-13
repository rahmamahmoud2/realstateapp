import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      color: screensBackGround,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.9,
            height: height * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              child: Container(
                width: width * 0.85,
                height: height * 0.27,
                child: Image.asset(
                  image,
                  alignment: Alignment.topCenter,
                  width: width * 0.5,
                  height: height * 0.55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            price.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: primaryColor),
          ),
        ],
      ),
    ));
  }
}
