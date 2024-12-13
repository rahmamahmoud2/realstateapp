import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

import 'package:real_state_app/views/chat/chat.dart';

import 'package:real_state_app/views/estimatedCost/estimated_cost.dart';

import 'package:real_state_app/views/home/home.dart';
import 'package:real_state_app/views/savedProperty/saves_property.dart';

import 'package:real_state_app/views/settings/settings.dart';

class Mainlayout extends StatefulWidget {
  const Mainlayout({super.key});

  @override
  State<Mainlayout> createState() => _MainlayoutState();
}

class _MainlayoutState extends State<Mainlayout> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Home(),
    SavesProperty(),
    EstimatedCost(),
    Chat(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 1, 16, 39),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group 1000005945.png'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Nav Menu 02.png'),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: primaryColor,
                maxRadius: 25,
                child: Image.asset(
                  'assets/images/Menu_Grid.png',
                  width: 80,
                ),
              ),
              label: 'grid',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group 1000005947.png'),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group 1000005948.png'),
              label: 'settings',
            ),
          ]),
    );
  }
}
