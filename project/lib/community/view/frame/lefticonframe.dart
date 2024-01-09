import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:team5/community/view/projectscreen/mainscreen.dart';

class Lefticon extends StatefulWidget {
  const Lefticon({super.key});

  @override
  State<Lefticon> createState() => _LefticonState();
}

class _LefticonState extends State<Lefticon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(Mainscreen());
      },
      child: Container(
        child: Image.asset('assets/images/Back.svg'),
      ),
    );
  }
}
