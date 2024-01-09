import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utill/color.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  _DropDown createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
  String drop_down_initial = '최신순';
  Map<String, bool> drop_down_list = {'최신순': true, '저장순': false, '댓글순': false};
  Map<String, PopupMenuItem<String>> drop_down_item = {};

  void popup_items() {
    for (String text in drop_down_list.keys.toList()) {
      drop_down_item[text] = PopupMenuItem<String>(
        value: text,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Pretendard',
              color: Color(0xFF020202),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        setState(() {
          drop_down_initial = value;
        });
        drop_down_list.forEach((key, value) {
          drop_down_list[key] = false;
        });
        drop_down_list[value] = true;
      },
      itemBuilder: (BuildContext context) {
        return drop_down_item.values.toList();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 5,
      child: Container(
        height: 38,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColor.Neutral10, width: 1),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                drop_down_initial,
                style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColor.Neutral100),
              ),
              Container(
                margin: EdgeInsets.only(left: 4),
                child: SvgPicture.asset(
                  'assets/icons/Dropdown.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
