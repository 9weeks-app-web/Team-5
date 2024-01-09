import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:team5/database/data_controller.dart';
import 'package:team5/portfolio/portfolio_appbar.dart';
import 'package:team5/portfolio/portfolio_appbar.dart';
import 'package:team5/portfolio/portfolio_filter.dart';
import 'package:team5/portfolio/portfolio_tapbar.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/screen/shortpec.dart';

class RespectPage extends StatefulWidget {
  @override
  Respectpage createState() => Respectpage();
}

class Respectpage extends State<RespectPage> {
  Map<String, Map<String, String>> rank_docs = {};
  Map<String, Map<String, String>> post_docs = {};
  Map<String, Map<String, String>> respect_docs = {};
  Map<String, Widget> ranking_widget = {};
  Map<String, Widget> best_widget = {};
  Map<String, Widget> category_widget = {};
  Map<String, Widget> respect_widget = {};
  Map<String, Widget> image_widget = {};
  Random random = Random();
  List<String> nickname = ['채채유', '정과', '햄마니', '하이 타이거'];
  List<String> category_name = ['UXUI', '그래픽', '영상'];

  bool information = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Set_data();
    Category_build();
    Ranking_build();
    Best_build();
    Respect_build();
    Image_build();
  }

  void Set_data() {
    rank_docs = {
      '1': {'view': '1.9k', 'like': '1.5k'},
      '2': {'view': '1.5k', 'like': '950'},
      '3': {'view': '1.3k', 'like': '580'},
      '4': {'view': '1k', 'like': '100'},
      '5': {'view': '890', 'like': '85'},
      '6': {'view': '720', 'like': '30'},
    };
    respect_docs = {
      '1': {'title': 'TECHWAVE', 'writer': 'Farouq Osuolale'},
      '2': {'title': '데이터 보안 생활을 위한 똑똑', 'writer': '채채유'}
    };
  }

  String number_format(int number) {
    NumberFormat format_num = NumberFormat('###');
    String result_string = '';
    if (number > 10000) {
      double change_int = number / 1000;
      result_string =
          '${change_int.toStringAsFixed(change_int.truncateToDouble() == change_int ? 0 : 1)}k';
    } else {
      result_string = format_num.format(number);
    }
    return result_string;
  }

  void Category_build() {
    for (int i = 1; i < 4; i++) {
      category_widget['slot_$i'] = Container(
        width: 39,
        height: 22,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            color: Color(0xFFE5EEFF), borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            category_name[i - 1],
            style: TextStyle(
              color: Color(0xFF0059FF),
              fontSize: 10,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    }
  }

  void Best_build() {
    for (int i = 1; i < 3; i++) {
      best_widget['best_$i'] = Container(
        margin: EdgeInsets.only(left: i == 1 ? 16 : 0, right: 8),
        padding: EdgeInsets.only(top: 8, left: 11, right: 11, bottom: 12),
        width: 212,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFF5F8FF),
          border: Border.all(
            width: 1,
            color: Color(0xFF7FACFF),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 53,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/Sfaclog/Respect/BestSfac_Propile_$i.png'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF99BCFF),
                      ),
                    ),
                    // child: ClipOval(
                    //   child: Image.asset(
                    //     'assets/images/Sfaclog/Respect/BestSfac_Propile_$i.png',
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    width: 90,
                    height: 53,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text(
                            nickname[i - 1],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                '팔로워',
                                style: TextStyle(
                                  color: Color(0xFF7F7F7F),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '${random.nextInt(1000)}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 22,
              child: Row(children: category_widget.values.toList()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 92,
                  height: 92,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(i == 1
                        ? 'assets/images/Sfaclog/Respect/BestSfac_1.png'
                        : 'assets/images/Sfaclog/Respect/BestSfac_3.png'),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  width: 92,
                  height: 92,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: [
                        Image.asset(
                          i == 1
                              ? 'assets/images/Sfaclog/Respect/BestSfac_2.png'
                              : 'assets/images/Sfaclog/Respect/BestSfac_4.png',
                          fit: BoxFit.fill,
                        ),
                        Center(
                          child: Text(
                            '+3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  }

  void Ranking_build() {
    for (String rank in rank_docs.keys) {
      ranking_widget[rank] = Container(
        width: 140,
        height: 156,
        margin: rank_docs.keys.toList().indexOf(rank) < 3
            ? EdgeInsets.only(right: 16)
            : EdgeInsets.only(left: 16),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/Sfaclog/Respect/Ranking_${rank_docs.keys.toList().indexOf(rank) + 1}.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: 140,
                          height: 70,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF000000).withOpacity(1.0),
                                Color(0xFF000000).withOpacity(0.0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 18,
              child: Container(
                width: 40,
                height: 60,
                child: Text(
                  rank,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 21,
              right: 5,
              child: Container(
                width: 70,
                height: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 10,
                      height: 14,
                      child: SvgPicture.asset(
                        'assets/icons/Eye.svg',
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 15,
                      child: Text(
                        '${rank_docs[rank]!['view']}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 14,
                      child: SvgPicture.asset(
                        'assets/icons/Heart.svg',
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 15,
                      child: Text(
                        '${rank_docs[rank]!['like']}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  void Respect_build() {
    for (int i = 1; i < 3; i++) {
      respect_widget['slot_$i'] = Container(
        margin: EdgeInsets.only(bottom: i == 1 ? 40 : 0),
        width: 360,
        height: 485,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 360,
                height: 360,
                child:
                    Image.asset('assets/images/Sfaclog/Respect/respect_$i.png'),
              ),
            ),
            Positioned(
              top: 328,
              right: 16,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    child: SvgPicture.asset(
                        'assets/images/Sfaclog/Icons/view.svg'),
                  ),
                  Text(
                    '${random.nextInt(1000)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Container(
                        width: 10,
                        height: 9.17,
                        child: SvgPicture.asset(
                            'assets/images/Sfaclog/Icons/Heart.svg'),
                      ),
                    ),
                  ),
                  Text(
                    '${random.nextInt(1000)}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 16,
              child: Container(
                width: 330,
                height: 157,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Sfaclog/Respect/Respect_propile_$i.png'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      respect_docs['$i']!['title']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      respect_docs['$i']!['writer']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    category_widget['slot_$i']!,
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  void Image_build() {
    for (int i = 1; i < 4; i++) {
      image_widget['slot_$i'] = Container(
        margin: EdgeInsets.only(right: 8, left: i == 1 ? 16 : 0),
        width: 143,
        height: 254,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/Sfaclog/Respect/Shortpec_$i.png')),
            borderRadius: BorderRadius.circular(12)),
      );
    }
  }

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
              child: Portfolio_Appbar(),
            ),
            Container(
              width: 360,
              height: 48,
              child: Portfolio_Tapbar(),
            ),
            PortfolioFilter(),
            Container(
              height: 500,
              margin: EdgeInsets.only(top: 8),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 360,
                      height: 550,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.25),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ranking_widget['1']!,
                                        ranking_widget['2']!,
                                        ranking_widget['3']!,
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        ranking_widget['4']!,
                                        ranking_widget['5']!,
                                        ranking_widget['6']!,
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              width: 120,
                              height: 30,
                              child: Text(
                                '베스트 스팩러',
                                style: TextStyle(
                                  color: Color(0xFF0059FF),
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
                              height: 210,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: best_widget.values.toList(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              width: 360,
                              child: Column(
                                children: respect_widget.values.toList(),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 300,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 16),
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                child: SvgPicture.asset(
                                                    'assets/images/Sfaclog/Icons/Shortfac_icon.svg'),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 30,
                                                child: Text(
                                                  '숏팩',
                                                  style: TextStyle(
                                                    color: Color(0xFF0059FF),
                                                    fontSize: 20,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    information = !information;
                                                  });
                                                },
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  child: SvgPicture.asset(
                                                      'assets/images/Sfaclog/Icons/Vector.svg'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          height: 254,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children:
                                                  image_widget.values.toList(),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  information
                                      ? Positioned(
                                          left: 83.5,
                                          top: 25.6,
                                          child: Container(
                                            width: 223,
                                            height: 42,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  bottom: 0,
                                                  left: 0,
                                                  child: Container(
                                                    width: 223,
                                                    height: 34,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFE6E6E6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
                                                    child: Center(
                                                      child: Text(
                                                        '스팩폴리오의 숏폼 콘텐츠를 경험해보세요!',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF020202),
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 19,
                                                  child: Container(
                                                    width: 12,
                                                    height: 12,
                                                    child: SvgPicture.asset(
                                                        'assets/images/Sfaclog/Respect/Triangle.svg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
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
