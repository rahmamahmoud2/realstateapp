import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/icon_customs.dart';
import 'package:real_state_app/core/stack_custom.dart';

import 'package:real_state_app/views/login/widgets/textfield_custom.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: StackCustom(
      Colorbackstack: primaryColor,
      colorstack: screensBackGround,
      backgroundwidget: Container(
        padding: EdgeInsets.only(top: height * 0.1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon2.png',
            ),
            Text(
              'propertion',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      stackHeight: height * 0.75,
      lowerWidget:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          'Login',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 15,
          ),
          height: height * 0.17,
          width: width * 0.7,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 253, 253),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              TextFieldCustom(
                  hintText: 'username',
                  iconcolor: personiconcolor,
                  icon: const Icon(Icons.person_outlined),
                  CircleAvatarcolor: CircleAvatarpersoncolor),
              Divider(
                thickness: 1,
                color: const Color.fromARGB(255, 199, 196, 196),
              ),
              TextFieldCustom(
                  hintText: 'password',
                  iconcolor: primaryColor,
                  icon: const Icon(Icons.lock_open),
                  CircleAvatarcolor: CircleAvatarlockcolor),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/register');
                },
                child: Text(
                  'don\'t have an account?',
                  style: TextStyle(color: Colors.grey),
                )),
            ButtonsCustom(
                textcolor: secondaryColor,
                buttoncolor: primaryColor,
                buttonbordercolor: primaryColor,
                onPressedbutton: () {
                  Navigator.pushReplacementNamed(context, 'question');
                },
                text: 'login',
                FontWeight: FontWeight.bold,
                buttonwidth: width * 0.28,
                buttonheight: height * 0.07),
          ],
        ),
        Container(
          width: width * 0.9,
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
    ));
  }
}
