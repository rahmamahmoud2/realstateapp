import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/views/Question/widgets/question_buttons.dart';
import 'package:real_state_app/views/Question/widgets/question_containers.dart';
import 'package:real_state_app/views/Question/widgets/question_text.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  RangeValues Values = RangeValues(500, 10000);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArrowBack(
                  onpress: () {},
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: primaryColor,
                    ))
              ],
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: QuestionText(
                text: 'what is your Budget?',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          QuestionContainers(
            width: width * .9,
            height: height * 0.20,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      QuestionText(
                        text: 'Price Range',
                        fontSize: 17,
                      ),
                      QuestionText(
                          text:
                              '\$${Values.start.toInt()} _ \$${Values.end.toInt()}',
                          fontSize: 14,
                          color: const Color.fromARGB(255, 50, 210, 242)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: width * .7,
                  child: RangeSlider(
                    activeColor: const Color.fromARGB(255, 50, 210, 242),
                    divisions: 100,
                    min: 500,
                    max: 10000,
                    values: Values,
                    onChanged: (RangeValues values) {
                      setState(() {
                        Values = values;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          QuestionText(
            text: 'where do you want to buy?',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          QuestionContainers(
            width: width * .9,
            height: height * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuestionButtons(
                  text: 'Near',
                  buttonbordercolor: primaryColor,
                  backgroundcolor: Colors.white,
                ),
                QuestionButtons(
                  buttonbordercolor: Colors.transparent,
                  text: 'Outside',
                  textcolor: Colors.white,
                  backgroundcolor: const Color.fromARGB(255, 227, 75, 75),
                ),
              ],
            ),
          ),
          ButtonsCustom(
              buttoncolor: primaryColor,
              textcolor: secondaryColor,
              buttonbordercolor: primaryColor,
              FontWeight: FontWeight.bold,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 60),
              text: 'show properties',
              buttonwidth: width * .9,
              buttonheight: height * 0.08,
              onPressedbutton: () {
                Navigator.pushNamed(context, 'mainlayout');
              }),
          TextButton(
              onPressed: () {},
              child: Text(
                'skip',
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ))
        ],
      ),
    );
  }
}
