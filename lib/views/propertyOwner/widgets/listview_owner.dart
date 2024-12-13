import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class ListviewOwner extends StatelessWidget {
  ListviewOwner({super.key});

  List<String> list1 = [
    'assets/images/Image (6).png',
    'assets/images/imagee.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/Image (4).png',
  ];
  final List<String> housenames = [
    'deluxe apartment',
    'motid apartment',
    'skrwr apartment',
    'qwdll apartment',
    'ewusd apartment',
  ];
  final List<String> houseprices = [
    '3,000,000',
    '1,230,000',
    '2,340,324',
    '2,840,324',
    '2,390,324',
  ];
  final List<String> locations = [
    '2BW street 3 ',
    'lagos 1nb gbe',
    '2BW street 3 ',
    '2lW street 3 n',
    '2eW street 3 newyo',
  ];
  final List<String> sizes = [
    '(1200 sq ft)',
    '(11440 sq ft)',
    '(1200 sq ft)',
    '(1200 sq ft)',
    '(1200 sq ft)'
  ];
  final List<String> beds = [
    '4 Bed',
    '3 Bed',
    '5 Bed',
    '2 Bed',
    '6 Bed',
  ];
  final List<String> baths = [
    '5 Bath',
    '3 Bath',
    '2 Bath',
    '4 Bath',
    '2 Bath',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
          width: width,
          height: height,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: list1.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  width: width,
                  margin: EdgeInsets.all(10),
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: width * 0.27,
                        height: height * 0.13,
                        child: Image.asset(
                          list1[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    housenames[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '\$${houseprices[index]}',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded,
                                          color: Colors.grey),
                                      Text(
                                        locations[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${sizes[index]}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.bed_outlined,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '${beds[index]}',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.bathtub_outlined,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '${baths[index]}',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.soup_kitchen_outlined,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '1 Kitchen',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
