import 'package:flutter/material.dart';

class Filterframe extends StatefulWidget {
  const Filterframe({super.key});

  @override
  State<Filterframe> createState() => _FilterframeState();
}

class _FilterframeState extends State<Filterframe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 510,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '필터 검색',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
