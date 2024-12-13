import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';

class NotificationsDetails extends StatelessWidget {
  NotificationsDetails({super.key});

  List<String> titles = [
    'broker',
    'seller',
    'offer',
    'broker',
    'seller',
    'offer',
  ];
  List<String> subtitles = [
    'you have a new offer ',
    'there is a proposal',
    'claim your 50% off',
    '35% off for you',
    'new offer from seller',
    'new offer from broker',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArrowText(
                onpress: () {
                  Navigator.pop(context);
                },
                text: 'Notification'),
            Container(
              width: width,
              height: height,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      height: height * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17)),
                      child: ListTile(
                        subtitle: Text(
                          subtitles[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        title: Text(
                          titles[index],
                          style: TextStyle(
                              color: const Color.fromARGB(255, 136, 134, 134)),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 235, 236, 240),
                          maxRadius: 23,
                          child: Icon(
                            Icons.notifications,
                            color: primaryColor,
                            size: 26,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
