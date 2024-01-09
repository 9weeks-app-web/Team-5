import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utill/color.dart';

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
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 16,
            child: SvgPicture.asset('assets/icons/sfaclog/Sfaclog.svg'),
          ),
          const SizedBox(
            width: 12.6,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '스팩로그',
                style: TextStyle(
                  color: AppColor.Neutral30,
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset('assets/images/Search.svg')),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset('assets/images/Chat.svg')),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset('assets/images/Alarm.svg')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
