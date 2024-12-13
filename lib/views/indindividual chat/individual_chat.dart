import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/views/indindividual%20chat/wigets/iconscall.dart';

class IndividualChat extends StatefulWidget {
  const IndividualChat({super.key});

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: screensBackGround,
      body: Container(
        padding: EdgeInsets.only(top: height * 0.05),
        child: Column(
          children: [
            Row(
              children: [
                ArrowBack(
                  onpress: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                    height: height * 0.06,
                    width: width * 0.12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
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
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'okay take care dear',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'audiocall');
                  },
                  child: Iconscall(
                    containercolor: purple,
                    iconcolor: primaryColor,
                    iconshape: Icons.phone,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'videocall');
                  },
                  child: Iconscall(
                    containercolor: purple,
                    iconcolor: primaryColor,
                    iconshape: Icons.video_call,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.78,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerRight,
                  width: width * 0.9,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: secondaryColor,
                        size: 27,
                      )),
                ),
                Container(
                    width: width * 0.75,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: ' type something...',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 229, 251, 229),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                            ),
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 250, 216, 185),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.face,
                            ),
                            color: const Color.fromARGB(255, 225, 110, 28),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
