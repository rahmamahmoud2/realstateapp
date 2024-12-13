import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/icon_customs.dart';
import 'package:real_state_app/core/stack_custom.dart';
import 'package:real_state_app/views/register/widgets/register_textfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: StackCustom(
        Colorbackstack: primaryColor,
        colorstack: screensBackGround,
        stackHeight: height * 0.85,
        lowerWidget: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(children: [
            Text('Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: height * 0.07,
            ),
            RegisterTextfield(
                hintText: 'Username',
                iconcolor: personiconcolor,
                icon: Icon(Icons.person_outlined),
                CircleAvatarcolor: CircleAvatarpersoncolor),
            SizedBox(
              height: height * 0.02,
            ),
            RegisterTextfield(
                hintText: 'Email',
                iconcolor: const Color.fromARGB(255, 11, 210, 87),
                icon: Icon(Icons.email_outlined),
                CircleAvatarcolor: const Color.fromARGB(255, 195, 246, 206)),
            SizedBox(
              height: height * 0.02,
            ),
            RegisterTextfield(
                hintText: 'password',
                iconcolor: primaryColor,
                icon: Icon(Icons.lock_open),
                CircleAvatarcolor: CircleAvatarlockcolor),
            SizedBox(
              height: height * 0.10,
            ),
            ButtonsCustom(
                buttoncolor: primaryColor,
                textcolor: secondaryColor,
                buttonbordercolor: primaryColor,
                FontWeight: FontWeight.bold,
                text: 'Register',
                buttonwidth: width * 0.80,
                buttonheight: height * 0.08,
                onPressedbutton: () {
                  Navigator.pushReplacementNamed(context, 'question');
                }),
            SizedBox(
              height: height * 0.09,
            ),
            Container(
              width: width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconCustom(icon: AssetImage('assets/images/facebook.png')),
                  IconCustom(icon: AssetImage('assets/images/google.png')),
                  IconCustom(icon: AssetImage('assets/images/apple.png')),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
