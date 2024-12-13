import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/stack_custom.dart';
import 'package:real_state_app/core/video_containe.dart';

class AudioCall extends StatelessWidget {
  const AudioCall({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/call.jpg'), fit: BoxFit.cover)),
      child: StackCustom(
        backimage: 'assets/images/call.jpg',
        backgroundwidget: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: Colors.white.withOpacity(0.4),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: width * 0.15,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.09,
                ),
                Text(
                  'audio call with',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  width: width * 0.3,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/call2.jpg')),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  'rahmamahmoud',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '10:12',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        lowerWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            VideoContainers(
                Containercolor: const Color.fromRGBO(127, 136, 229, 1),
                Containericon: Icons.mic,
                iconcolor: Colors.green),
            VideoContainers(
                Containercolor: Colors.green,
                Containericon: Icons.phone,
                iconcolor: Colors.white),
            VideoContainers(
                Containercolor: const Color.fromRGBO(127, 136, 229, 1),
                Containericon: Icons.videocam,
                iconcolor: Colors.green),
          ],
        ),
        stackHeight: height * 0.3,
        colorstack: primaryColor,
      ),
    ));
  }
}
