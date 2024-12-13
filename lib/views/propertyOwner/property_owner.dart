import 'dart:io';

import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

import 'package:image_picker/image_picker.dart';
import 'package:real_state_app/core/shared_row.dart';
import 'package:real_state_app/views/getSchedule/get_schedule.dart';
import 'package:real_state_app/views/propertyOwner/widgets/listview_owner.dart';
import 'package:real_state_app/core/squarscolors.dart';

class PropertyOwner extends StatefulWidget {
  const PropertyOwner({super.key});

  @override
  State<PropertyOwner> createState() => _PropertyOwnerState();
}

class _PropertyOwnerState extends State<PropertyOwner> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(
        children: [
          SharedRow(
            onpress: () {
              Navigator.pop(context);
            },
            text: 'Owner Profile',
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  height: height * 0.10,
                  width: width * 0.20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                width: width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'james oluwas',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'jamesoluwaseun11@gmail.com',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Squarscolors(
                onpresed: () {
                  Navigator.pushNamed(context, 'individualchat');
                },
                Color: const Color.fromARGB(255, 192, 227, 255),
                text: 'Messages',
                Iconphoto: Icons.message,
                iconcolor: Colors.blue,
              ),
              Squarscolors(
                onpresed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (builder) {
                        return GetSchedule();
                      });
                },
                Color: const Color.fromARGB(255, 247, 221, 208),
                text: 'shcedule',
                Iconphoto: Icons.calendar_month_outlined,
                iconcolor: const Color.fromARGB(255, 216, 111, 58),
              ),
              Squarscolors(
                onpresed: () {
                  Navigator.pushNamed(context, 'audiocall');
                },
                Color: const Color.fromARGB(255, 210, 245, 226),
                text: 'call',
                Iconphoto: Icons.call,
                iconcolor: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'property ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ListviewOwner()
        ],
      ),
    );
  }
}
