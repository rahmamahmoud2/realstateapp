import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/shared_row.dart';
import 'package:real_state_app/core/squarscolors.dart';
import 'package:real_state_app/views/artificialApartment/widgets/circles.dart';
import 'package:real_state_app/views/getSchedule/get_schedule.dart';
import 'package:real_state_app/views/indindividual%20chat/individual_chat.dart';

class Artificial extends StatelessWidget {
  const Artificial({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SharedRow(
                onpress: () {
                  Navigator.pop(context);
                },
                text: 'Artificial Apartment'),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'searchplot');
                    },
                    child: Text(
                      'NY, newyork',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: width * 0.9,
              height: height * 0.3,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(19)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.8,
                      height: height * 0.28,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/download (16).jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      '\$ 2,500',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text(
                      '/per 10 sqft',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                ButtonsCustom(
                    padding: EdgeInsets.only(right: 5),
                    iconcircleavatar: Icons.edit,
                    buttoncolor: primaryColor,
                    textcolor: secondaryColor,
                    CircleAvatarbutton: CircleAvatar(),
                    text: 'edit profile',
                    FontWeight: FontWeight.w300,
                    buttonwidth: width * 0.4,
                    buttonheight: height * 0.06,
                    onPressedbutton: () {},
                    buttonbordercolor: primaryColor)
              ],
            ),
            SizedBox(
              height: height * 0.017,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Circles(
                  text: '3bedrooms',
                  circleicon: Icons.bed_outlined,
                ),
                Circles(
                  text: '3bath',
                  circleicon: Icons.bathtub_outlined,
                ),
                Circles(
                  text: '2kitchen',
                  circleicon: Icons.soup_kitchen_outlined,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'description',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.w300),
                    'fcvkefvmefvmcmcmdmkkkkkkkkkkkkkkkfmfmaer\ntuypdnabxrchehtafoegywtr')),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                    height: height * 0.07,
                    width: width * 0.12,
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
              height: height * 0.014,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
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
                          builder: (context) {
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
                    text: 'calls',
                    Iconphoto: Icons.call,
                    iconcolor: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
