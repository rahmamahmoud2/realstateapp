import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/views/settings/widgets/listtile_custom.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: screensBackGround,
        body: Column(
          children: [
            ArrowText(onpress: () {}, text: 'Settings'),
            ListtileCustom(
                iconcolor: personiconcolor,
                backcolor: CircleAvatarpersoncolor,
                text: 'Personal profile',
                circleicon: Icons.person,
                onpress: () {
                  Navigator.pushNamed(context, 'ownerprofile');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: const Color.fromARGB(255, 11, 210, 87),
                backcolor: const Color.fromARGB(255, 195, 246, 206),
                text: 'my wallet',
                circleicon: Icons.credit_card,
                onpress: () {
                  Navigator.pushNamed(context, 'transactiondetails');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: Colors.red,
                backcolor: const Color.fromARGB(255, 243, 209, 207),
                text: 'Privacy policy',
                circleicon: Icons.privacy_tip,
                onpress: () {
                  Navigator.pushNamed(context, 'termscondition');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: const Color.fromARGB(255, 167, 39, 163),
                backcolor: const Color.fromARGB(255, 238, 194, 233),
                text: 'history',
                circleicon: Icons.history_edu,
                onpress: () {
                  Navigator.pushNamed(context, 'history');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: primaryColor,
                backcolor: const Color.fromARGB(255, 219, 209, 243),
                text: 'notifications',
                circleicon: Icons.notifications,
                onpress: () {
                  Navigator.pushNamed(context, 'notification');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: const Color.fromARGB(255, 126, 116, 25),
                backcolor: const Color.fromARGB(255, 245, 255, 196),
                text: 'Contact us',
                circleicon: Icons.call,
                onpress: () {
                  Navigator.pushNamed(context, 'contactus');
                }),
            SizedBox(
              height: height * 0.02,
            ),
            ListtileCustom(
                iconcolor: Colors.black,
                backcolor: const Color.fromARGB(255, 198, 193, 211),
                text: 'artificial apartment',
                circleicon: Icons.house,
                onpress: () {
                  Navigator.pushNamed(context, 'artificial');
                }),
            SizedBox(
              height: height * 0.07,
            ),
            ListtileCustom(
                iconcolor: const Color.fromARGB(255, 59, 179, 226),
                backcolor: const Color.fromARGB(255, 214, 234, 252),
                text: 'Logout',
                circleicon: Icons.logout,
                onpress: () {})
          ],
        ));
  }
}
