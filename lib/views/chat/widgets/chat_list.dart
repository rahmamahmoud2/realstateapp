import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'individualchat');
        },
        child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.11,
                    width: width,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/person.jpg'),
                              maxRadius: 32,
                            ),
                            Positioned(
                              bottom: 5,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                maxRadius: 7,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'james oluwas',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'take care about your self',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: const Color.fromARGB(
                                          255, 119, 117, 117)),
                                ),
                                trailing: Text('12:00pm',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 13)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
