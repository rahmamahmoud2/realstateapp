import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/arrow_text.dart';

class Builders extends StatelessWidget {
  Builders({super.key});

  List<String> list2 = [
    'assets/images/home1.jpg',
    'assets/images/home2.jpg',
    'assets/images/home3 (3).jpg',
    'assets/images/home4.jpg',
    'assets/images/home3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Stack(
        children: [
          Column(
            children: [
              ArrowText(
                  onpress: () {
                    Navigator.pop(context);
                  },
                  text: 'Builders profile'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: height * 0.10,
                      width: width * 0.20,
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
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'jamesoluwaseun11@gmail.com',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Container(
                      width: width * 0.15,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 210, 245, 226),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'audiocall');
                        },
                        icon: Icon(
                          Icons.phone,
                        ),
                        iconSize: 25,
                        color: Colors.green,
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                alignment: Alignment.centerLeft,
                child: Text('Portfolio',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                  width: width,
                  height: height * 0.15,
                  child: ListView.builder(
                      itemCount: list2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: width * 0.28,
                          margin: EdgeInsets.all(10),
                          height: height * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fill,
                              list2[index],
                            ),
                          ),
                        );
                      })),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/download (16).jpg',
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
