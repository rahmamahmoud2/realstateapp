import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/core/stack_custom.dart';

class SeachPlot extends StatelessWidget {
  const SeachPlot({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: StackCustom(
        backgroundwidget: Container(
          margin: EdgeInsets.only(top: 35),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: secondaryColor,
                  )),
              SearchCustom(
                  Width: width * 0.8,
                  text: 'Search Plot',
                  height: height * 0.07),
            ],
          ),
        ),
        lowerWidget: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: Image.asset(
            'assets/images/map.jpg',
            fit: BoxFit.cover,
          ),
        ),
        stackHeight: height * 0.85,
        Colorbackstack: primaryColor,
      ),
    );
  }
}
