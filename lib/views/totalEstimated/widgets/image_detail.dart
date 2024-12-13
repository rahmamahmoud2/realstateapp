import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class ImageDetail extends StatelessWidget {
  ImageDetail({
    super.key,
  });

  List<Map> listviewdetails = [
    {
      'image': 'assets/images/Brick.png',
      'title': 'Bricks total',
      'price': '\$3000000',
      'text': '200,000pcs (per pcs \$1.5)',
      'color': const Color.fromARGB(255, 247, 221, 208),
    },
    {
      'image': 'assets/images/rods.png',
      'title': 'Rods total',
      'price': '\$200000',
      'text': '100 ton (per ton \$2000)',
      'color': const Color.fromARGB(255, 192, 227, 255)
    },
    {
      'image': 'assets/images/Sand.png',
      'title': 'Sand total',
      'price': '\$50000',
      'text': '500 fit (per fit \$10)',
      'color': const Color.fromARGB(255, 151, 179, 219),
    },
    {
      'image': 'assets/images/cement.png',
      'title': 'Cement total',
      'price': '\$1800000',
      'text': '9000bag (per bag \$20)',
      'color': const Color.fromARGB(255, 210, 245, 226),
    },
    {
      'image': 'assets/images/Brick.png',
      'title': 'Bricks total',
      'price': '\$3000000',
      'text': '200,000pcs (per pcs \$1.5)',
      'color': const Color.fromARGB(255, 247, 221, 208),
    },
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: listviewdetails.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: width * 0.9,
            height: height * 0.14,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: width * 0.2,
                  height: height * 0.10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: listviewdetails[index]['color']),
                  child: Image.asset(
                    listviewdetails[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: width * 0.05),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            listviewdetails[index]['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            listviewdetails[index]['price'],
                            style: TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        listviewdetails[index]['text'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
