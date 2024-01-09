import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:team5/database/data_controller.dart';
import 'package:team5/portfolio/sfaclog_appbar.dart';
import 'package:team5/portfolio/sfaclog_filter.dart';
import 'package:team5/portfolio/sfaclog_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/shortpec.dart';
import 'package:team5/utill/color.dart';

class GroupPage extends StatefulWidget {
  @override
  Grouppage createState() => Grouppage();
}

class Grouppage extends State<GroupPage> {
  List<Map<String, dynamic>> best_portfolio = [
    {
      'nickname': 'Golodestkiy',
      'name': 'Denys El',
      'tag': '디지털아트',
      'view': '20',
      'like': '680',
    },
    {
      'nickname': 'Lanchonete',
      'name': 'Manoel Michael',
      'tag': '제품/패키지 디자인',
      'view': '12',
      'like': '600',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        width: 360,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Sfaclog_Appbar(),
            ),
            Container(
              width: 360,
              height: 48,
              child: Sfaclog_Tapbar(),
            ),
            SfaclogFilter(),
            Container(
              color: Colors.white,
              height: 508,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.25),
                          height: 30,
                          child: Text(
                            '베스트 포트폴리오',
                            style: TextStyle(
                              color: AppColor.Primary100,
                              fontSize: 20,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 312,
                          child: ListView.separated(
                            padding: EdgeInsets.only(left: 16.25, right: 16.25),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(width: 12),
                            scrollDirection: Axis.horizontal,
                            itemCount: best_portfolio.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 200,
                                          height: 200,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Sfaclog/Group/Best_${index + 1}.png'),
                                                  fit: BoxFit.fill
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 168.5, left: 10),
                                          width: 44,
                                          height: 44,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Sfaclog/Group/Best_person_${index + 1}.png'),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 2,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        best_portfolio[index]['nickname'],
                                        style: const TextStyle(
                                            color: Color(0xff030303),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        best_portfolio[index]['name'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 28,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      decoration: ShapeDecoration(
                                        color: AppColor.Primary10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            best_portfolio[index]['tag'],
                                            style: TextStyle(
                                              color: AppColor.Primary100,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                              height: 0.08,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 16,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x4C000000),
                          blurRadius: 6,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ]),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => Shortpec());
                        },
                        child: Container(
                          width: 116,
                          height: 46,
                          child: SvgPicture.asset(
                              'assets/images/Sfaclog/Icons/Shortfac_switch.svg'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomNavigationBarComponent()
          ],
        ),
      ),
    );
  }
}
