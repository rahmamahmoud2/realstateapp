import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/stack_custom.dart';
import 'package:real_state_app/views/transactionDetails/widgets/listtile_transaction.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          StackCustom(
              backgroundwidget: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: secondaryColor,
                            )),
                        Text(
                          'Transaction Details',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                            height: height * 0.07,
                            width: width * 0.15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
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
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'jamesoluwaseun11@gmail.com',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 208, 206, 206),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Colorbackstack: primaryColor,
              colorstack: screensBackGround,
              lowerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/card.png',
                      width: width * 0.85,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Transaction ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Listtiletransaction(
                    text: 'token',
                    price: '\$450',
                  ),
                  Listtiletransaction(
                    text: 'security Deposit',
                    price: '\$120',
                  ),
                  Listtiletransaction(
                    text: 'service charge',
                    price: '\$90',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonsCustom(
                        text: 'saved card',
                        buttonwidth: width * 0.4,
                        buttonheight: height * 0.07,
                        onPressedbutton: () {
                          Navigator.pushNamed(context, 'cardpayment');
                        },
                        buttoncolor: primaryColor,
                        buttonbordercolor: primaryColor,
                        textcolor: secondaryColor,
                      ),
                      ButtonsCustom(
                        text: 'card payment',
                        buttonwidth: width * 0.4,
                        buttonheight: height * 0.07,
                        onPressedbutton: () {
                          Navigator.pushNamed(context, 'savedcard');
                        },
                        buttoncolor: primaryColor,
                        buttonbordercolor: primaryColor,
                        textcolor: secondaryColor,
                      )
                    ],
                  )
                ],
              ),
              stackHeight: height * 0.8),
        ],
      ),
    );
  }
}
