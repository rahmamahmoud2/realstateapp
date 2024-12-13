import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';
import 'package:real_state_app/core/arrow_back.dart';
import 'package:real_state_app/core/arrow_text.dart';
import 'package:real_state_app/core/search_custom.dart';
import 'package:real_state_app/views/chat/widgets/chat_list.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: screensBackGround,
      body: Column(
        children: [
          ArrowText(
              onpress: () {
                Navigator.pop(context);
              },
              text: 'Messages'),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchCustom(
                    Width: width * 0.7, text: 'Search', height: height * 0.07),
                Container(
                    width: width * 0.15,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 245, 226),
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      size: 25,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          ChatList(),
        ],
      ),
    );
  }
}
