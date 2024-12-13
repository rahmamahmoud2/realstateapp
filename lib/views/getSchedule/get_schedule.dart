import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/views/getSchedule/widgets/textfielding.dart';
import 'package:real_state_app/views/getSchedule/widgets/texting.dart';

class GetSchedule extends StatefulWidget {
  const GetSchedule({super.key});

  @override
  State<GetSchedule> createState() => _GetScheduleState();
}

class _GetScheduleState extends State<GetSchedule> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      width: width,
      height: height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Get Schedule',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              Texting(text: 'Title'),
              Textfielding(
                containerwidth: width * 0.9,
                containerheight: height * 0.08,
                text: 'Meeting Name',
              ),
            ],
          ),
          Column(
            children: [
              Texting(text: 'Choose Date'),
              Textfielding(
                texticon: Icons.calendar_month_rounded,
                containerwidth: width * 0.9,
                containerheight: height * 0.08,
                text: '5 Aug 2022',
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text('start time',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                Textfielding(
                  texticon: Icons.timer,
                  containerwidth: width * 0.35,
                  containerheight: height * 0.08,
                  text: '11:00 AM',
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text('end time',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                Textfielding(
                  texticon: Icons.timer,
                  containerwidth: width * 0.35,
                  containerheight: height * 0.08,
                  text: '11:00 AM',
                ),
              ],
            ),
          ]),
          ButtonsCustom(
              padding: EdgeInsets.only(right: 60),
              textcolor: secondaryColor,
              FontWeight: FontWeight.bold,
              buttoncolor: primaryColor,
              text: 'Ask For Schedule',
              buttonwidth: width * 0.9,
              buttonheight: height * 0.08,
              onPressedbutton: () {},
              buttonbordercolor: primaryColor)
        ],
      ),
    );
  }
}
