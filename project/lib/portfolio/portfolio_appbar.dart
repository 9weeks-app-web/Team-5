import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sfaclog_Appbar extends StatefulWidget {
  const Sfaclog_Appbar({super.key});

  @override
  State<Sfaclog_Appbar> createState() => _Sfaclog_Appbar();
}

class _Sfaclog_Appbar extends State<Sfaclog_Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 24,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 24,
                  child: Center(
                      child:
                          SvgPicture.asset('assets/icons/sfaclog/Sfaclog.svg')),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  '스팩로그',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 24,
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  child: Center(
                    child: SvgPicture.asset('assets/images/Search.svg'),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Center(
                    child: SvgPicture.asset('assets/images/Chat.svg'),
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Center(
                    child: SvgPicture.asset('assets/images/Alarm.svg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
