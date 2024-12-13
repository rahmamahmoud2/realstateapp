import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class OrBording extends StatelessWidget {
  const OrBording({super.key});

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
            Image.asset('assets/images/5969930780127904555.jpg'),
            Text(
              'select your property',
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
                      Navigator.of(context).pushNamed('login');
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
