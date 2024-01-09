import 'package:flutter/material.dart';

import '../utill/color.dart';

// class SelectableContainer extends StatefulWidget {
//   final String text;

//   SelectableContainer({required this.text});

//   @override
//   _SelectableContainerState createState() => _SelectableContainerState();
// }

// class _SelectableContainerState extends State<SelectableContainer> {
//   bool _selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selected = !_selected;
//         });
//       },
//       child: Container(
//         child: Text(
//           widget.text,
//           style: TextStyle(
//             color: _selected ? AppColor.Primary100 : Colors.black,
//             fontSize: 12,
//             height: 1.4,
//           ),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         decoration: ShapeDecoration(
//           color: _selected ? AppColor.BackgroundBiue : null,
//           shape: RoundedRectangleBorder(
//             side: _selected ? BorderSide(width: 1, color: AppColor.Primary100) : BorderSide(width: 1, color: AppColor.Neutral10),
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),
//     );
//   }
// }

class SelectableContainer extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  SelectableContainer({
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          text,
          style: TextStyle(
            color: selected ? AppColor.Primary100 : Colors.black,
            fontSize: 12,
            height: 1.4,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          color: selected ? AppColor.BackgroundBiue : null,
          shape: RoundedRectangleBorder(
            side: selected ? BorderSide(width: 1, color: AppColor.Primary100) : BorderSide(width: 1, color: AppColor.Neutral10),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}