import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/core/stack_custom.dart';

import 'package:real_state_app/views/cardPayment/widgets/graph.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  @override
  Widget build(BuildContext context) {
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          ArrowText(
              onpress: () {
                Navigator.pop(context);
              },
              text: 'saved card'),
          Expanded(
            child: StackCustom(
              backgroundwidget: Container(
                height: height * 0.29,
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
              Colorbackstack: secondaryColor,
              colorstack: const Color.fromARGB(255, 230, 229, 229),
              lowerWidget: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Transcation details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    height: height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$ 52287',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          endIndent: 2,
                          color: Colors.grey,
                          width: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '\$ 52287',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          endIndent: 2,
                          color: Colors.grey,
                          width: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '\$ 617287',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(30), child: Graphshape()),
                  ),
                ],
              ),
              stackHeight: height * 0.6,
            ),
          )
        ],
      ),
    );
  }
}
