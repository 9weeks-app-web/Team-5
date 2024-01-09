import 'package:flutter/material.dart';

class FilterFindButton extends StatefulWidget {
  final String text1;
  const FilterFindButton({Key? key, required this.text1}) : super(key: key);

  @override
  State<FilterFindButton> createState() => _FilterFindButtonState();
}

class _FilterFindButtonState extends State<FilterFindButton> {
  bool _isPressed1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _isPressed1 = !_isPressed1;
          });
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: 0),
          primary: _isPressed1 ? Colors.white : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: _isPressed1 ? Color(0xFF0059FF) : Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text1,
              style: TextStyle(
                  color: _isPressed1 ? Color(0xFF0059FF) : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
