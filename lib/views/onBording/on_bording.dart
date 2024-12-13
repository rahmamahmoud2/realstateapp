import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/Illustration1.png'),
            Text(
              'Buy your Dream House',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'SKIP',
                    style:
                        TextStyle(color: Color.fromRGBO(126, 121, 121, 0.956)),
                  ),
                ),
                SizedBox(
                  width: width * 0.6,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('orbording');
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(color: primaryColor),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
