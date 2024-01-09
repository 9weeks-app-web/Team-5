import 'package:flutter/material.dart';
import '../utill/color.dart';

class Sfaclog_Tapbar extends StatefulWidget {
  const Sfaclog_Tapbar({super.key});

  @override
  State<Sfaclog_Tapbar> createState() => _Sfaclog_Tapbar();
}

class _Sfaclog_Tapbar extends State<Sfaclog_Tapbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TabBar(
        indicatorColor: AppColor.Primary100,
        labelPadding: EdgeInsets.symmetric(horizontal: 1),
        labelStyle: TextStyle(
          color: AppColor.Primary100,
          fontWeight: FontWeight.w600,
          fontFamily: 'Pretendard',
          fontSize: 16,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColor.Neutral100,
          fontFamily: 'Pretendard',
          fontSize: 16,
        ),
        tabs: [
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '맞춤추천',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '팔로잉',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '리스팩',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 80,
              child: Text(
                '직군별',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kTextTabBarHeight);
}
