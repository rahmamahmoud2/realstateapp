import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

import '../../productDetails/productdetail.dart';

class ListviewHoriz extends StatelessWidget {
  ListviewHoriz(
      {super.key,
      required this.ListViewWidth,
      required this.ListViewHeight,
      required this.ContainerWidth,
      required this.ContainerHeight,
      required this.borderRadius});

  final ListViewWidth;
  final ListViewHeight;
  final ContainerWidth;
  final ContainerHeight;

  final BorderRadius borderRadius;
  final List<String> imagelist2 = [
    'assets/images/house1.jpg',
    'assets/images/house2.jpg',
    'assets/images/Image (7).png',
  ];
  final List<String> housenames = [
    'deluxe apartment',
    'motid apartment',
    'skrwr apartment',
  ];
  final List<String> houseprices = ['3,000,000', '1,230,000', '2,340,324'];
  final List<String> locations = [
    '2BW street 3 ',
    'lagos gbet45lt',
    '2BW street3 new',
  ];
  final List<String> sizes = ['(1200 sq ft)', '(1140 sq ft)', '(1200 sq ft)'];
  final List<String> beds = [
    '4 Bed',
    '3 Bed',
    '5 Bed',
  ];
  final List<String> baths = [
    '5 Bath',
    '3 Bath',
    '2 Bath',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: ListViewWidth,
          height: ListViewHeight,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: imagelist2.length,
              itemBuilder: (context, index) {
                return Container(
                  width: ContainerWidth,
                  height: ContainerHeight,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: secondaryColor,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productdetail(
                                    image: imagelist2[index],
                                    title: housenames[index],
                                    price: houseprices[index],
                                  )));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.25,
                            child: Image.asset(
                              imagelist2[index],
                              alignment: Alignment.topCenter,
                              width: ContainerWidth,
                              height: ContainerHeight,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_rounded,
                                    color: Colors.grey),
                                Text(
                                  locations[index],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                            Text(
                              '${sizes[index]}',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
