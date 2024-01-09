import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../portfolio/respect.dart';
import '../utill/color.dart';

class Portfolio_Tapbar extends StatefulWidget {
  const Portfolio_Tapbar({super.key});

  @override
  State<Portfolio_Tapbar> createState() => _Portfolio_Tapbar();
}

class _Portfolio_Tapbar extends State<Portfolio_Tapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
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
          body: Container(
            width: 360,
            height: 550,
            child: TabBarView(
              children: [
                Center(
                  child: Text('맞춤추천'),
                ),
                Center(
                  child: Text('팔로잉'),
                ),
                Container(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [RespectPage()],
                  ),
                )),
                Center(
                  child: Text('직군별'),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kTextTabBarHeight);
}
