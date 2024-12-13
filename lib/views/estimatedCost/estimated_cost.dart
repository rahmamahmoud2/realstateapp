import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/views/estimatedCost/widgets/selected_content.dart';

class EstimatedCost extends StatefulWidget {
  EstimatedCost({super.key});

  @override
  State<EstimatedCost> createState() => _EstimatedCostState();
}

class _EstimatedCostState extends State<EstimatedCost> {
  List<String> list2 = [
    'assets/images/home1.jpg',
    'assets/images/home2.jpg',
    'assets/images/home3 (3).jpg',
    'assets/images/home4.jpg',
    'assets/images/home3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(
        children: [
          ArrowText(onpress: () {}, text: 'Search Estimated Cost'),
          SearchCustom(
              Width: width * 0.9, text: 'Duplex House', height: height * 0.06),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Duplex House',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'see All',
                          style: TextStyle(color: primaryColor),
                        ),
                        Icon(Icons.chevron_right_outlined, color: primaryColor),
                      ],
                    )),
              ],
            ),
          ),
          Container(
              width: width,
              height: height * 0.12,
              child: ListView.builder(
                  itemCount: list2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: width * 0.22,
                      margin: EdgeInsets.all(7),
                      height: height * 0.15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset(
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill,
                          list2[index],
                        ),
                      ),
                    );
                  })),
          SizedBox(height: height * 0.02),
          SelectedContent(),
          SizedBox(height: height * 0.022),
          ButtonsCustom(
              padding: EdgeInsets.only(right: 35),
              text: 'Estimated Cost',
              buttonwidth: width * 0.85,
              buttonheight: height * 0.07,
              onPressedbutton: () {
                Navigator.pushNamed(context, 'totalestimated');
              },
              buttonbordercolor: primaryColor,
              textcolor: Colors.white,
              buttoncolor: primaryColor),
        ],
      ),
    );
  }
}
