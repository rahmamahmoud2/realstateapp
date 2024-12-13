import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class IconCustom extends StatelessWidget {
  const IconCustom({super.key, required this.icon});
  final AssetImage icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 25,
      backgroundColor: secondaryColor,
      backgroundImage: icon,
    );
  }
}
