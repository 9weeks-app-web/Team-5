import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({super.key});

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(
        width: 1,
        strokeAlign: BorderSide.strokeAlignCenter,
        color: Color(0xFFF3F3F3),
      ))),
    );
  }
}
