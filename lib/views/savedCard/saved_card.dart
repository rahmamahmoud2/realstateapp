import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/views/savedCard/widgets/selection.dart';

class SavedCard extends StatelessWidget {
  SavedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<Widget> valuewidget = [];
    List<String> cards = [
      'assets/images/card2.png',
      'assets/images/card.png',
      'assets/images/card1.png',
    ];
    for (int i = 0; i < cards.length; i++) {
      valuewidget.add(
        Image.asset(
          cards[i],
        ),
      );
    }
    return Scaffold(
      body: Column(
        children: [
          ArrowText(
              onpress: () {
                Navigator.pop(context);
              },
              text: 'saved card'),
          Container(
            height: height * 0.3,
            child: CardSlider(
              cards: valuewidget,
              bottomOffset: .0008,
              itemDotWidth: 20,
              itemDotOffset: 0.7,
              itemDot: (itemDotWidth) {
                return Container(
                    margin: const EdgeInsets.all(5),
                    width: 8 + itemDotWidth,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 176, 67, 196),
                    ));
              },
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Selection()
        ],
      ),
    );
  }
}
