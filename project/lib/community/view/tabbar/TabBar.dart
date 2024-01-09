import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screen/noticeboard.dart';

import '../../../utill/color.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        color: Colors.white,
        child: TabBar(
          indicatorColor: AppColor.Primary100,
          labelPadding: EdgeInsets.symmetric(horizontal: 1),
          labelStyle: TextStyle(
            color: AppColor.Primary100,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          tabs: [
            Tab(
              child: Container(
                width: 80,
                child: Text(
                  '게시판',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 80,
                child: Text(
                  '프로젝트',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 80,
                child: Text(
                  '스터디',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Tab(
              child: Container(
                width: 80,
                child: Text(
                  '채용공고',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kTextTabBarHeight);
}