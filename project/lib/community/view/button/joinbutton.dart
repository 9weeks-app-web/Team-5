import 'package:flutter/material.dart';

class filterbutton extends StatefulWidget {
  @override
  _filterbuttonState createState() => _filterbuttonState();
}

class _filterbuttonState extends State<filterbutton> {
  bool isButtonPressed = false;

  void onButtonPressed() {
    setState(() {
      isButtonPressed = !isButtonPressed;
    });
    // 버튼이 눌릴 때 수행할 작업 추가
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 48,
      decoration: ShapeDecoration(
          color: Color(0xFF0059FF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '참여하기',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
