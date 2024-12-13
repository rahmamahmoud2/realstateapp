import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/views/filterProperty/widgets/property_text.dart';

class FilterProperty extends StatefulWidget {
  const FilterProperty({super.key});

  @override
  State<FilterProperty> createState() => _FilterPropertyState();
}

class _FilterPropertyState extends State<FilterProperty> {
  RangeValues size = RangeValues(2000, 5000);
  RangeValues price = RangeValues(30000, 50000);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.8,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: Column(
        children: [
          PropertyText(
              text: 'Filter',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          Row(
            children: [
              PropertyText(
                  text: 'property type',
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PropertyText(
                  text: 'property size',
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              PropertyText(
                  text: 'Up to ${size.end.toInt()} sqft',
                  fontSize: 15,
                  color: const Color.fromARGB(255, 50, 210, 242),
                  fontWeight: FontWeight.w400),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            width: width * .8,
            child: RangeSlider(
              activeColor: const Color.fromARGB(255, 50, 210, 242),
              divisions: 100,
              min: 2000,
              max: 5000,
              values: size,
              onChanged: (RangeValues values) {
                setState(() {
                  size = values;
                });
              },
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Row(
                children: [
                  PropertyText(
                      text: 'property price',
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PropertyText(
                      text: 'low',
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                  PropertyText(
                      text: 'High',
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: width * .8,
                child: RangeSlider(
                  activeColor: const Color.fromARGB(255, 50, 210, 242),
                  divisions: 100,
                  min: 30000,
                  max: 50000,
                  values: price,
                  onChanged: (RangeValues values) {
                    setState(() {
                      price = values;
                    });
                  },
                  labels: RangeLabels(price.start.toInt().toString(),
                      price.end.toInt().toString()),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonsCustom(
                  buttoncolor: secondaryColor,
                  buttonbordercolor: primaryColor,
                  text: 'Reset',
                  buttonwidth: width * 0.35,
                  buttonheight: height * 0.07,
                  onPressedbutton: () {}),
              ButtonsCustom(
                buttonbordercolor: primaryColor,
                buttoncolor: primaryColor,
                padding: EdgeInsets.only(right: 40),
                text: 'availability',
                textcolor: secondaryColor,
                buttonwidth: width * 0.45,
                buttonheight: height * 0.07,
                onPressedbutton: () {
                  Navigator.pushNamed(context, '/matchedProperty');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
