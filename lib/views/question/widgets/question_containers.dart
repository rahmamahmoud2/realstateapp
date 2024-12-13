import 'package:flutter/material.dart';

class QuestionContainers extends StatefulWidget {
  const QuestionContainers({super.key, this.width, this.height, this.child});

  final width;
  final height;
  final child;
  @override
  State<QuestionContainers> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
