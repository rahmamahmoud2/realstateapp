import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  int selected = 0;

  List<String> texts = [
    'Expenses',
    'Incoming',
  ];

  List<Widget> selectdetail = [
    Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Container(
            width: 60,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(255, 183, 225, 248),
            ),
            child: Image.asset(
              'assets/images/pay.png',
              width: 10,
            ),
          ),
          title: Text(
            'Pay Builders',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text('jan 1, 2022'),
          trailing: Text(
            '\$142',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: Container(
            width: 60,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(255, 242, 247, 177),
            ),
            child: Image.asset(
              'assets/images/rent.png',
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Rent house',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text('feb 5, 2020'),
          trailing: Text(
            '\$151',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(255, 246, 202, 251),
            ),
            child: Image.asset(
              'assets/images/broker.png',
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Broker',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text(' july 9, 2024'),
          trailing: Text(
            '\$142',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color.fromARGB(255, 196, 237, 222),
            ),
            child: Image.asset(
              'assets/images/renthouse.png',
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Buy house',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text('jan 2 ,2020'),
          trailing: Text(
            '\$5,151',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text('incoming'),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width * 0.85,
          height: height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color.fromARGB(255, 219, 214, 214)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(texts.length, (index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.all(3),
                      width: width * 0.4,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: selected == index
                              ? const Color.fromARGB(255, 218, 98, 98)
                              : Colors.transparent),
                      child: Center(
                          child: Text(
                        texts[index],
                        style: TextStyle(
                            color:
                                selected == index ? Colors.white : Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ))));
            }),
          ),
        ),
        selectdetail[selected]
      ],
    );
  }
}
