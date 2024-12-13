import 'package:flutter/material.dart';

class SelectedContent extends StatefulWidget {
  SelectedContent({super.key});

  int selectedCategory = 0;

  final List<String> categories = ['Building', 'Outside wall', 'Others'];
  final List<Color> textcolor = [
    Colors.white,
    Colors.orange,
    Color.fromARGB(255, 46, 231, 52),
  ];
  final List<Widget> content = [
    Column(
      children: [
        Image.asset('assets/images/Image (7).png'),
        SizedBox(
          height: 10,
        ),
        Text(
          'Duplex House  (2000 sqft)',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'DEWALINGI NAGAR, ',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'DEWALINGI NAGAR',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    )
  ];
  @override
  State<SelectedContent> createState() => _SelectedContentState();
}

class _SelectedContentState extends State<SelectedContent> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(widget.categories.length, (index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.selectedCategory = index;
                    });
                  },
                  child: Container(
                      width: width * 0.3,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: widget.selectedCategory == index
                              ? const Color.fromARGB(255, 218, 98, 98)
                              : Colors.transparent),
                      child: Center(
                          child: Text(
                        widget.categories[index],
                        style: TextStyle(
                            color: widget.selectedCategory == index
                                ? Colors.white
                                : widget.textcolor[index],
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ))));
            }),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          widget.content[widget.selectedCategory],
        ],
      ),
    );
  }
}
