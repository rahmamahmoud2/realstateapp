import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/buttons_custom.dart';
import 'package:real_state_app/core/shared_row.dart';

class PrpertyDetails extends StatelessWidget {
  PrpertyDetails({
    super.key,
    required this.imagee,
  });

  final imagee;
  List<Icon> star = [
    Icon(
      Icons.star,
      color: Colors.amber,
    ),
    Icon(
      Icons.star,
      color: Colors.amber,
    ),
    Icon(
      Icons.star,
      color: Colors.amber,
    ),
    Icon(
      Icons.star,
      color: Colors.amber,
    ),
    Icon(
      Icons.star,
      color: Colors.amber,
    )
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SharedRow(
              onpress: () {
                Navigator.pop(context);
              },
              text: 'Property Details',
            ),
            Container(
              width: width * 0.9,
              height: height * 0.35,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(19)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width * 0.8,
                    height: height * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        imagee,
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('delaxue apartments',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        Text(
                          '\$210,309,493',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            Text('233rd New YorkUSA',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                )),
                          ],
                        ),
                        Text(
                          ' (25000 sqft)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ]),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.07,
                      ),
                      Icon(
                        Icons.bed_outlined,
                        color: Colors.red,
                      ),
                      Text('3bed',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          )),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(
                        Icons.bathtub_outlined,
                        color: Colors.red,
                      ),
                      Text('3bath',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          )),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Icon(
                        Icons.soup_kitchen,
                        color: Colors.red,
                      ),
                      Text('3kitchen',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: width * 0.9,
              height: height * 0.25,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: height * 0.07,
                          width: width * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
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
                              fontSize: 20,
                            ),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                        'At the end of the day, we want a home that \n matches our lifestyle. RE/MAX knows that and promises clients their agents are ready and waiting to help find the perfect fit.',
                        style: TextStyle(fontSize: width * 0.03)),
                  ),
                  Row(
                    children: [
                      star[0],
                      star[1],
                      star[2],
                      star[3],
                      star[4],
                    ],
                  )
                ],
              ),
            ),
            ExpansionTile(
              title: Text('Amenities',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            ExpansionTile(
              title: Text('interior details',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            ExpansionTile(
              title: Text('construction details',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text('location map&details',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: width * 0.3,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color.fromARGB(255, 218, 98, 98)),
                          child: Center(
                            child: Text(
                              'location map',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          )),
                      Text('hospital '),
                      Text('school')
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/map.jpg',
                          width: width * 0.9)),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ButtonsCustom(
                    text: 'save',
                    buttonwidth: width * 0.9,
                    buttonheight: height * 0.07,
                    onPressedbutton: () {
                      Navigator.pushNamed(context, 'mainlayout');
                    },
                    buttonbordercolor: primaryColor,
                    buttoncolor: primaryColor,
                    textcolor: secondaryColor,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
