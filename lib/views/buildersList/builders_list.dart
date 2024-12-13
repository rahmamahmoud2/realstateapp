import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/views/buildersList/widgets/builders_view.dart';

class BuildersList extends StatelessWidget {
  const BuildersList({super.key});

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
              text: 'All Builders'),
          SearchCustom(
              Width: width * 0.9, text: 'Ma....', height: height * 0.07),
          SizedBox(height: height * 0.03),
          BuildersView()
        ],
      ),
    );
  }
}
