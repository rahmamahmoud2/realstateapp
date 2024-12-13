import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/views/totalEstimated/widgets/image_detail.dart';

class TotalEstimated extends StatelessWidget {
  const TotalEstimated({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(children: [
        ArrowText(
            onpress: () {
              Navigator.pop(context);
            },
            text: 'Total Estimated'),
        ImageDetail(),
        Container(
          width: width,
          height: height * 0.14,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: secondaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonsCustom(
                text: 'Hire builders',
                buttonwidth: width * 0.5,
                buttonheight: height * 0.07,
                onPressedbutton: () {
                  Navigator.pushNamed(context, 'builderslist');
                },
                buttonbordercolor: primaryColor,
                buttoncolor: primaryColor,
                textcolor: secondaryColor,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total cost',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('\$50,00,000',
                      style: TextStyle(
                          fontSize: 20,
                          color: primaryColor,
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
