import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/mainlayout.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/views/filterProperty/filter_property.dart';
import 'package:real_state_app/views/home/widgets/listview_home.dart';

import '../productDetails/productdetail.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> details = [
    {
      'image': 'assets/images/house1.jpg',
      'title': 'deluxe apartment',
      'price': '\$3,000,000',
    },
    {
      'image': 'assets/images/house2.jpg',
      'title': 'motid apartment',
      'price': '\$1,230,000',
    },
    {
      'image': 'assets/images/Image (7).png',
      'title': 'skrwr apartment',
      'price': '\$2,340,324',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: screensBackGround,
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'hello!',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  'James Oluwaseun',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                trailing: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ownerprofile');
                  },
                  child: CircleAvatar(
                    maxRadius: 25,
                    foregroundImage: AssetImage('assets/images/person.jpg'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height * 0.075,
                    width: width * 0.6,
                    child: SearchCustom(
                        Width: width * 0.6,
                        text: 'Search',
                        height: height * 0.075),
                  ),
                  ButtonsCustom(
                      iconcircleavatar: Icons.filter_list,
                      textcolor: secondaryColor,
                      buttoncolor: primaryColor,
                      buttonbordercolor: primaryColor,
                      CircleAvatarbutton: CircleAvatar(),
                      text: 'Filters',
                      buttonwidth: width * 0.3,
                      buttonheight: height * 0.075,
                      padding: EdgeInsets.only(right: 7),
                      onPressedbutton: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return FilterProperty();
                            });
                      }),
                ],
              ),
              ListviewHome(
                borderRadius: BorderRadius.circular(25),
                ListViewWidth: width,
                ListViewHeight: height * 0.13,
                ScrollDirection: Axis.horizontal,
                ContainerWidth: width * 0.25,
                ContainerHeight: height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Properties',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 87, 210, 138)),
                          ),
                          Icon(
                            Icons.chevron_right_outlined,
                            color: const Color.fromARGB(255, 87, 210, 138),
                          )
                        ],
                      ))
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Productdetail(
                                image: details[0]['image'],
                                title: details[1]['title'],
                                price: details[2]['price'],
                              )));
                },
                child: ListviewHome(
                    borderRadius: BorderRadius.circular(30),
                    ListViewWidth: width,
                    ListViewHeight: height * 0.5,
                    ScrollDirection: Axis.vertical,
                    ContainerWidth: width * 0.5,
                    ContainerHeight: height * 0.45),
              ),
            ],
          ),
        ));
  }
}
