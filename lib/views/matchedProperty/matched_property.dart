import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/views/filterProperty/filter_property.dart';
import 'package:real_state_app/views/matchedProperty/widgets/matched_listview.dart';
import 'package:real_state_app/views/propertyDetails/prperty_details.dart';

class MatchedProperty extends StatefulWidget {
  const MatchedProperty({super.key});

  @override
  State<MatchedProperty> createState() => _MatchedPropertyState();
}

class _MatchedPropertyState extends State<MatchedProperty> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15),
        width: width,
        height: height,
        color: screensBackGround,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchCustom(
                    height: height * 0.07, Width: width * 0.6, text: 'search'),
                ButtonsCustom(
                    iconcircleavatar: Icons.filter_list,
                    CircleAvatarbutton: CircleAvatar(),
                    textcolor: secondaryColor,
                    text: 'filter',
                    buttonwidth: width * 0.33,
                    buttonheight: height * 0.07,
                    onPressedbutton: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return FilterProperty();
                          });
                    },
                    buttoncolor: primaryColor,
                    buttonbordercolor: primaryColor)
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 13, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Matched Properties',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 87, 210, 138)),
                          ),
                          Icon(
                            Icons.chevron_right_outlined,
                            color: const Color.fromARGB(255, 87, 210, 138),
                          )
                        ],
                      ))
                ],
              ),
            ),
            MatchedListview(),
          ],
        ),
      ),
    );
  }
}
