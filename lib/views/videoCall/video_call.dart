import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

import 'package:real_state_app/core/stack_custom.dart';
import 'package:real_state_app/core/video_containe.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          StackCustom(
              colorstack: primaryColor,
              backgroundwidget: Stack(
                children: [
                  Image.asset(
                    'assets/images/call.jpg',
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  ),
                  Container(
                      margin: EdgeInsets.all(15),
                      width: width * 0.09,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(74, 67, 236, 0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: secondaryColor,
                            ),
                          ))),
                  Container(
                    margin:
                        EdgeInsets.only(left: width * 0.6, top: height * 0.07),
                    width: width * 0.39,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/call2.jpg')),
                  ),
                ],
              ),
              lowerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'handy wlks',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text(
                        '10:12',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 228, 225, 225)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      VideoContainers(
                          Containercolor:
                              const Color.fromRGBO(127, 136, 229, 1),
                          Containericon: Icons.mic,
                          iconcolor: Colors.green),
                      VideoContainers(
                          Containercolor: Colors.green,
                          Containericon: Icons.phone,
                          iconcolor: Colors.white),
                      VideoContainers(
                          Containercolor:
                              const Color.fromRGBO(127, 136, 229, 1),
                          Containericon: Icons.videocam,
                          iconcolor: Colors.green),
                    ],
                  ),
                ],
              ),
              stackHeight: height * 0.32),
        ],
      ),
    );
  }
}
