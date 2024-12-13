import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(
        children: [
          ArrowText(
              onpress: () {
                Navigator.pop(context);
              },
              text: 'History'),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(8),
                      height: height * 0.15,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: width * 0.25,
                            height: height * 0.18,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/person.jpg'),
                                ),
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  ListTile(
                                    trailing: Icon(Icons.chevron_right),
                                    title: Text(
                                      'micheal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Payment Successful',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
                }),
          )
        ],
      ),
    );
  }
}
