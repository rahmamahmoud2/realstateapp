import 'package:flutter/material.dart';
import 'package:real_state_app/core/stack_custom.dart';
import 'package:real_state_app/views/conactUs/widgets/cotactus_textfield.dart';
import '../../core/app_colors.dart';
import '../../core/buttons_custom.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: StackCustom(
          Colorbackstack: primaryColor,
          colorstack: screensBackGround,
          backgroundwidget: Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: secondaryColor,
                )),
          ),
          lowerWidget: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(children: [
              Text('Contact Us',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: height * 0.04,
              ),
              ContactUsTextfield(
                  hintText: 'full name',
                  iconcolor: personiconcolor,
                  icon: Icon(Icons.person_outlined),
                  CircleAvatarcolor: CircleAvatarpersoncolor),
              SizedBox(
                height: height * 0.02,
              ),
              ContactUsTextfield(
                  hintText: 'Email',
                  iconcolor: const Color.fromARGB(255, 11, 210, 87),
                  icon: Icon(Icons.email_outlined),
                  CircleAvatarcolor: const Color.fromARGB(255, 195, 246, 206)),
              SizedBox(
                height: height * 0.02,
              ),
              ContactUsTextfield(
                  hintText: 'phone no',
                  iconcolor: primaryColor,
                  icon: Icon(Icons.lock_open),
                  CircleAvatarcolor: CircleAvatarlockcolor),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                width: width * 0.8,
                height: height * 0.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 253, 253),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Message',
                  hintStyle: TextStyle(color: Colors.grey),
                )),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              ButtonsCustom(
                  buttoncolor: primaryColor,
                  textcolor: secondaryColor,
                  buttonbordercolor: primaryColor,
                  text: 'Send',
                  buttonwidth: width * 0.80,
                  buttonheight: height * 0.08,
                  onPressedbutton: () {}),
            ]),
          ),
          stackHeight: height * 0.90),
    );
  }
}
