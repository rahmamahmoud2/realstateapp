import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/views/propertyDetails/prperty_details.dart';

class MatchedListview extends StatefulWidget {
  MatchedListview({super.key});

  List<String> imagelist1 = [
    'assets/images/house3.jpg',
    'assets/images/house2.jpg',
    'assets/images/house1.jpg',
  ];
  final List<String> housenames = [
    'deluxe apartment',
    'motid apartment',
    'skrwr apartment',
  ];
  final List<String> houseprices = ['3,000,000', '1,230,000', '2,340,324'];
  final List<String> locations = [
    '2BW street 3 newyork2',
    'lagos 1nb gbe t45lt',
    '2BW street 3 newcity 3 ',
  ];
  final List<String> sizes = ['(1200 sq ft)', '(11440 sq ft)', '(1200 sq ft)'];
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
  State<MatchedListview> createState() => _MatchedListviewState();
}

class _MatchedListviewState extends State<MatchedListview> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    List<Map> images = [
      {
        'image': 'assets/images/house3.jpg',
      },
      {
        'image': 'assets/images/house2.jpg',
      },
      {
        'image': 'assets/images/house1.jpg',
      },
    ];
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PrpertyDetails(
                        imagee: images[0]['image'],
                      )));
        },
        child: Container(
          width: width * 0.95,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: width,
                  height: height * 0.45,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: secondaryColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  widget.imagelist1[index],
                                )),
                            borderRadius: BorderRadius.circular(10)),
                        width: width * 0.8,
                        height: height * 0.27,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.housenames[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  '\$${widget.houseprices[index]}',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_rounded,
                                        color: Colors.grey),
                                    Text(
                                      widget.locations[index],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${widget.sizes[index]}',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bed_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '${widget.beds[index]}',
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
                                      '${widget.baths[index]}',
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
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
