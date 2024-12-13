import 'package:flutter/material.dart';
import 'package:real_state_app/core/app_colors.dart';

class StackCustom extends StatelessWidget {
  StackCustom(
      {super.key,
      required this.lowerWidget,
      required this.stackHeight,
      this.colorstack,
      this.Colorbackstack,
      this.backgroundwidget,
      this.backimage});
  final Widget? backgroundwidget;
  final Widget lowerWidget;
  final double stackHeight;
  final colorstack;
  final backimage;
  final Colorbackstack;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      color: Colorbackstack,
      child: Stack(
        children: [
          backgroundwidget ?? Container(),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: stackHeight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                  color: colorstack),
              child: lowerWidget,
            ),
          ),
        ],
      ),
    );
  }
}
