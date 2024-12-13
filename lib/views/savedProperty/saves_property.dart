import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';

import 'package:real_state_app/core/search_custom.dart';

import 'package:real_state_app/views/savedProperty/widgets/listview_horiz.dart';

class SavesProperty extends StatefulWidget {
  SavesProperty({super.key});

  final List<String> imagelist2 = [
    'assets/images/house1.jpg',
    'assets/images/house2.jpg',
    'assets/images/Image (7).png',
  ];

  List<Map> details = [
    {
      'image': 'assets/images/house1.jpg',
      'title': 'deluxe apartment',
      'price': '\$3,000,000',
    },
    {
      'image': 'assets/images/house2.jpg',
      'title': 'motid apartment',
      'price': '\$1,230,000',
    },
    {
      'image': 'assets/images/Image (7).png',
      'title': 'skrwr apartment',
      'price': '\$2,340,324',
    }
  ];

  @override
  State<SavesProperty> createState() => _Home2State();
}

class _Home2State extends State<SavesProperty> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10),
        width: width,
        height: height,
        color: screensBackGround,
        child: Column(
          children: [
            ArrowText(onpress: () {}, text: 'saved property'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchCustom(
                    Width: width * 0.9, text: 'Search', height: height * 0.075),
              ],
            ),
            ListviewHoriz(
                ListViewWidth: width,
                ListViewHeight: height * 0.7,
                ContainerWidth: width * 0.8,
                ContainerHeight: height * 0.4,
                borderRadius: BorderRadius.circular(30)),
          ],
        ),
      ),
    );
  }
}
