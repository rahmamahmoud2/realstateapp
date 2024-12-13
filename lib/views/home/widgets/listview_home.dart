import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../productDetails/productdetail.dart';

class ListviewHome extends StatefulWidget {
  ListviewHome({
    super.key,
    required this.ListViewWidth,
    required this.ListViewHeight,
    required this.ScrollDirection,
    required this.ContainerWidth,
    required this.ContainerHeight,
    required this.borderRadius,
  });

  final ListViewWidth;
  final ListViewHeight;
  final ContainerWidth;
  final ContainerHeight;
  final ScrollDirection;
  final BorderRadius borderRadius;
  final List<String> imagelist1 = [
    'assets/images/grid.png',
    'assets/images/towers.png',
    'assets/images/build.png',
    'assets/images/home.png',
    'assets/images/greenbyild.png',
  ];
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
  final List<String> houseprices = ['3,000,00', '1,230,000', '2,340,324'];
  final List<String> locations = [
    '2BW street 3 newyork2',
    'lagos 1nb gbe t45lt',
    '2BW street 3 newcity 3 ',
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
  State<ListviewHome> createState() => _ListviewHomeState();
}

class _ListviewHomeState extends State<ListviewHome> {
  @override
  Widget build(BuildContext context) {
    final imageList = widget.ScrollDirection == Axis.horizontal
        ? widget.imagelist1
        : widget.imagelist2;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: widget.ListViewWidth,
          height: widget.ListViewHeight,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: widget.ScrollDirection,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Container(
                    width: widget.ContainerWidth,
                    height: widget.ContainerHeight,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: widget.borderRadius,
                      color: secondaryColor,
                    ),
                    child: widget.ScrollDirection == Axis.horizontal
                        ? Image.asset(
                            imageList[index],
                          )
                        : Padding(
                            padding: const EdgeInsets.all(19),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productdetail(
                                              image: widget.imagelist2[index],
                                              title: widget.housenames[index],
                                              price: widget.houseprices[index],
                                            )));
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: Container(
                                      width: width * 0.8,
                                      height: height * 0.27,
                                      child: Image.asset(
                                        imageList[index],
                                        alignment: Alignment.topCenter,
                                        width: widget.ContainerWidth,
                                        height: widget.ContainerHeight,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_rounded,
                                              color: Colors.grey),
                                          Text(
                                            widget.locations[index],
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '${widget.sizes[index]}',
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
                                            '${widget.beds[index]}',
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ));
              }),
        ),
      ],
    );
  }
}
