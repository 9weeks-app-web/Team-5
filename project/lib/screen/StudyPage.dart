import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team5/screen/studyfillter.dart';

import 'package:team5/widget/StudyCollectWidget.dart';
import 'package:team5/widget/StudyWidget.dart';

import '../community/view/tabbar/TabBar.dart';
import '../utill/color.dart';

import '../community/view/appbar/AppBar.dart';
import 'bottom_nagivation_bar.dart';

final List<String> carouselItems = [
  'assets/images/community/noticeboard/banner_1.png',
  'assets/images/community/noticeboard/banner_2.png',
  'assets/images/community/noticeboard/banner_3.png',
  'assets/images/community/noticeboard/banner_4.png',
  'assets/images/community/noticeboard/banner_5.png',
  'assets/images/community/noticeboard/banner_6.png',
];

class StudyPage extends StatefulWidget {
  const StudyPage({super.key});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  String _rank = '최신순';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          height: 48,
          width: 360,
          child: CustomAppBarWidget(),
        ),
        Container(
          width: 360,
          height: 40,
          child: CustomTabBar(),
        ),
          Container(
            color: Colors.white,
            height: 564,
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        items: carouselItems
                            .map((image) => Image.asset(image))
                            .toList(),
                        options: CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 4),
                        alignment: Alignment.bottomCenter,
                        child: DotsIndicator(
                          dotsCount: carouselItems.length,
                          position: currentIndex,
                          decorator: const DotsDecorator(
                              size: Size.square(4),
                              activeSize: Size.square(4),
                              activeColor: Colors.white,
                              spacing: EdgeInsets.all(2)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        '참여자 많은 스터디',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                      Image.asset('assets/icons/fire.png'),
                    ],
                  ),
                ),
                StudyWidget(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '스터디 모집',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StudyFilter(),
                      Container(
                          width: 76,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(color: AppColor.Neutral5),
                          ),
                          child: Container(
                            child: DropdownButton<String>(
                              underline: SizedBox.shrink(),
                              value: _rank,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _rank = newValue!;
                                });
                              },
                              items: <String>[
                                '최신순',
                                '저장순',
                                '좋아요순'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value == '최신순'
                                        ? '최신순'
                                        : value == '저장순'
                                            ? '저장순'
                                            : '좋아요순',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                );
                              }).toList(),
                            ),
                          )),
                    ],
                  ),
                ),
                StudyCollectWidget(),
              ]),
            ),
          ),
          BottomNavigationBarComponent()
        ],
      ),
    );
  }
}
