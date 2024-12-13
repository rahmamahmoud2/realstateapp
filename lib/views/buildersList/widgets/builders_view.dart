import 'package:flutter/material.dart';

class BuildersView extends StatelessWidget {
  BuildersView({super.key});

  List<Map> builders = [
    {
      'image': 'assets/images/person.jpg',
      'name': 'james oluwas',
      'email': 'jamesllgoluwaseun11@gmail.com',
    },
    {
      'image': 'assets/images/person.jpg',
      'name': 'codyugg fisher',
      'email': 'codykbtcrfvbxfisher11@gmail.com',
    },
    {
      'image': 'assets/images/person.jpg',
      'name': 'cameron rpuwaseun',
      'email': 'cameronrpuwaseun11@gmail.com',
    }
  ];
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
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: builders.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'builders');
                      },
                      child: Container(
                          height: height * 0.09,
                          width: width * 0.17,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              builders[index]['image'],
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          builders[index]['name'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          builders[index]['email'],
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
                  width: width,
                  height: height * 0.18,
                  child: ListView.builder(
                      itemCount: list2.length,
                      padding: EdgeInsets.all(10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.zero,
                          width: width * 0.27,
                          margin: EdgeInsets.all(7),
                          height: height * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset(
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fill,
                              list2[index],
                            ),
                          ),
                        );
                      }),
                )
              ],
            );
          }),
    );
  }
}
