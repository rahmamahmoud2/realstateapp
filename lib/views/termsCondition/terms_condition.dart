import 'package:flutter/material.dart';
import 'package:real_state_app/core/arrow_text.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ArrowText(
                onpress: () {
                  Navigator.pop(context);
                },
                text: 'Terms of service'),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Terms',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Text(
                'A terms and conditions agreement outlines the website administratos rules regarding user behavior, and provides information about the actions the website administrator can and will perform.\n \n Your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look to this agreement to determine whether each party acted within their rights User License terms and conditions agreement outlines the website administrators rules regarding user behavior, and provides information about the actions the website administrator can and will perform.'),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('User License',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Text(
                'A terms and conditions agreement outlines the website administratos rules regarding user behavior, and provides information about the actions the website administrator can and will perform.\n  \n Your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look to this agreement to determine whether each party acted within their rights User License terms and conditions agreement outlines the website administrators rules regarding user behavior, and provides information about the actions the website administrator can and will perform.'),
          ],
        ),
      ),
    );
  }
}
