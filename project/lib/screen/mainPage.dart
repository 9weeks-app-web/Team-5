import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../community/view/projectscreen/subscree.dart';
import '../utill/color.dart';

import 'bottom_nagivation_bar.dart';


final List<String> carouselItems = [
  'assets/main_resource/image/1_메인배너.png',
  'assets/main_resource/image/1_메인배너.png',
  'assets/main_resource/image/1_메인배너.png',
  'assets/main_resource/image/1_메인배너.png',
  'assets/main_resource/image/1_메인배너.png',
  'assets/main_resource/image/1_메인배너.png',
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<bool> bookmarked = List.filled(3, false);

  // 오늘의 포트폴리오 부분 respect에서 코드 가져옴
  Map<String, Widget> ranking_widget = {};
  Map<String, Map<String, String>> rank_docs = {};

  @override
  void initState() {
    super.initState();
    Set_data();
    Ranking_build();
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
  }

  void Ranking_build() {
    for (String rank in rank_docs.keys) {
      ranking_widget[rank] = Container(
        width: 140,
        height: 156,
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
  // ====================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: 360,
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 16,
                    child: SvgPicture.asset('assets/icons/sfaclog/Sfaclog.svg'),
                  ),
                  SizedBox(
                    width: 12.6,
                  ),
                  Column(
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
                  Spacer(),
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
                                child: SvgPicture.asset(
                                    'assets/images/Search.svg')),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset('assets/images/Chat.svg')),
                        SizedBox(
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
            ),
            Container(
              width: 360,
              height: 604,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      child: Stack(
                        children: [
                          CarouselSlider(
                            items: carouselItems
                                .map((image) => Image.asset(
                                      image,
                                      fit: BoxFit.fill,
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              height: 220,
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
                              decorator: DotsDecorator(
                                  size: Size.square(4),
                                  activeSize: Size.square(4),
                                  activeColor: Colors.white,
                                  spacing: EdgeInsets.all(2)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '오늘의 포트폴리오',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x60000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 156,
                            child: ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(width: 12),
                              scrollDirection: Axis.horizontal,
                              itemCount: rank_docs.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  // decoration: ShapeDecoration(
                                  //   shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(8),
                                  //     side: const BorderSide(
                                  //       color: Color(0xFFf5f8ff),
                                  //       width: 1,
                                  //     ),
                                  //   ),
                                  // ),
                                  width: 140,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: ranking_widget['${index+1}'],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '인기 포트폴리오',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x60000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 328,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xffB2CDFF),
                                  AppColor.Primary100,
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                  ),
                                  child: Text(
                                    '2023트렌드가 모두 담긴 포트폴리오',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF002B7B),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 276),
                                  height: 124,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 10,
                                        offset: Offset(0, -4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  margin: EdgeInsets.only(
                                    top: 68,
                                    left: 52,
                                  ),
                                  width: 224,
                                  height: 224,
                                  child: Image.asset(
                                      'assets/main_resource/image/인기포트폴리오_이미지.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 308,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'My세브란스 UX/UI리뉴얼 프로젝트',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '고믿음',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.Neutral60,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Spacer(),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                'UXUI',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                '디자인',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: AppColor.Primary10,
                                              ),
                                              child: Text(
                                                '리뉴얼',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 60,
                            child: Stack(children: [
                              Image.asset('assets/images/Home_portfolio.png'),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 96),
                                width: 144,
                                height: 36,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 144,
                                      height: 12,
                                      child: Text(
                                        'Waranya Portfolio',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      width: 40,
                                      height: 16,
                                      child: Text(
                                        '설담비',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF3F3F3),
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                          height: 0.09,
                                          letterSpacing: 0.01,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 60,
                            child: Stack(children: [
                              Image.asset('assets/images/Home_security.png'),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 69),
                                width: 190,
                                height: 36,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      height: 12,
                                      child: Text(
                                        '데이터 보안 생활을 위한 똑똑',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      width: 40,
                                      height: 16,
                                      child: Text(
                                        '송구슬',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF3F3F3),
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                          height: 0.09,
                                          letterSpacing: 0.01,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 120,
                      width: 360,
                      child: Image.asset(
                        'assets/main_resource/image/4_중간배너.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '프로젝트 모집',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                  top: 15,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '더보기 >',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x60000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          // 프로젝트 컨테이너
                          GestureDetector(
                            onTap: () {
                              Get.to(() => SubScreen());
                            },
                            child: Container(
                              width: 328,
                              height: 140,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColor.Primary5,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 12,
                                    top: 12,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Image.asset(
                                          'assets/images/Thumbnail_BIg (3).png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 102,
                                    top: 12,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 19,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 2),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  color: AppColor.Primary10,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                child: Text(
                                                  'D-14',
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    color: AppColor.Primary100,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Container(
                                                height: 19,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 2),
                                                alignment: Alignment.center,
                                                decoration: ShapeDecoration(
                                                  color: AppColor.Primary10,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                child: Text(
                                                  '온라인',
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    color: AppColor.Primary100,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 108,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    bookmarked[0] =
                                                        !bookmarked[0];
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 6),
                                                  width: 24,
                                                  height: 24,
                                                  child: bookmarked[0]
                                                      ? SvgPicture.asset(
                                                          'assets/icons/Bookmark_filled.svg')
                                                      : SvgPicture.asset(
                                                          'assets/icons/Bookmark.svg'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          child: Text(
                                            'UX/UI디자이너 모집합니다.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: Text(
                                            '포트폴리오 | 직무 역량 강화',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.Neutral40,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 104, left: 12),
                                    width: 304,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: AppColor.Primary5,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 12,
                                      top: 116,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '모집현황',
                                          style: TextStyle(
                                            color: AppColor.Neutral100,
                                            fontSize: 10,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          '5/8',
                                          style: TextStyle(
                                            color: AppColor.Primary100,
                                            fontSize: 10,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          width: 12,
                                          height: 12,
                                          child: SvgPicture.asset(
                                              'assets/icons/Dropdown.svg'),
                                        ),
                                        SizedBox(
                                          width: 167,
                                        ),
                                        Container(
                                          height: 14,
                                          width: 10,
                                          child: SvgPicture.asset(
                                              'assets/icons/Eye.svg'),
                                        ),
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            color: AppColor.Neutral70,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          height: 14,
                                          width: 12,
                                          child: SvgPicture.asset(
                                              'assets/icons/Bubble.svg'),
                                        ),
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: AppColor.Neutral70,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          height: 14,
                                          width: 12,
                                          child: SvgPicture.asset(
                                              'assets/icons/interaction/bookmark.svg'),
                                        ),
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            color: AppColor.Neutral70,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: 328,
                            height: 140,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: AppColor.Primary5,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(
                                        'assets/images/Thumbnail_BIg (1).png'),
                                  ),
                                ),
                                Positioned(
                                  left: 102,
                                  top: 12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 19,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 2),
                                              alignment: Alignment.center,
                                              decoration: ShapeDecoration(
                                                color:
                                                    AppColor.WarningBackground,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                'D-3',
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: AppColor.Warning,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              height: 19,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 2),
                                              alignment: Alignment.center,
                                              decoration: ShapeDecoration(
                                                color: AppColor.Primary10,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                '오프라인',
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 108,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  bookmarked[1] =
                                                      !bookmarked[1];
                                                });
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 4, horizontal: 6),
                                                width: 24,
                                                height: 24,
                                                child: bookmarked[1]
                                                    ? SvgPicture.asset(
                                                        'assets/icons/Bookmark_filled.svg')
                                                    : SvgPicture.asset(
                                                        'assets/icons/Bookmark.svg'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        child: Text(
                                          '프론트엔드 개발자 급구!',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: Text(
                                          '공모전 | 공모전 수상 도전',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.Neutral40,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 104, left: 12),
                                  width: 304,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: AppColor.Primary5,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 12,
                                    top: 116,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '모집현황',
                                        style: TextStyle(
                                          color: AppColor.Neutral100,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '1/4',
                                        style: TextStyle(
                                          color: AppColor.Primary100,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        width: 12,
                                        height: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/Dropdown.svg'),
                                      ),
                                      SizedBox(
                                        width: 167,
                                      ),
                                      Container(
                                        height: 14,
                                        width: 10,
                                        child: SvgPicture.asset(
                                            'assets/icons/Eye.svg'),
                                      ),
                                      Text(
                                        '12',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/Bubble.svg'),
                                      ),
                                      Text(
                                        '6',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/interaction/bookmark.svg'),
                                      ),
                                      Text(
                                        '12',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: 328,
                            height: 140,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: AppColor.Primary5,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 12,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(
                                        'assets/images/Thumbnail_BIg (5).png'),
                                  ),
                                ),
                                Positioned(
                                  left: 102,
                                  top: 12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 19,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 2),
                                              alignment: Alignment.center,
                                              decoration: ShapeDecoration(
                                                color: AppColor.Primary10,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                'D-20',
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Container(
                                              height: 19,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 2),
                                              alignment: Alignment.center,
                                              decoration: ShapeDecoration(
                                                color: AppColor.Primary10,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                '온라인',
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: AppColor.Primary100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 108,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  bookmarked[2] =
                                                      !bookmarked[2];
                                                });
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 4, horizontal: 6),
                                                width: 24,
                                                height: 24,
                                                child: bookmarked[2]
                                                    ? SvgPicture.asset(
                                                        'assets/icons/Bookmark_filled.svg')
                                                    : SvgPicture.asset(
                                                        'assets/icons/Bookmark.svg'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        child: Text(
                                          '그래픽디자이너 모집합니다.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        child: Text(
                                          '포트폴리오 | 직무 역량 강화',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.Neutral40,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 104, left: 12),
                                  width: 304,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: AppColor.Primary5,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 12,
                                    top: 116,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '모집현황',
                                        style: TextStyle(
                                          color: AppColor.Neutral100,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '1/2',
                                        style: TextStyle(
                                          color: AppColor.Primary100,
                                          fontSize: 10,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        width: 12,
                                        height: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/Dropdown.svg'),
                                      ),
                                      SizedBox(
                                        width: 167,
                                      ),
                                      Container(
                                        height: 14,
                                        width: 10,
                                        child: SvgPicture.asset(
                                            'assets/icons/Eye.svg'),
                                      ),
                                      Text(
                                        '11',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/Bubble.svg'),
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 12,
                                        child: SvgPicture.asset(
                                            'assets/icons/interaction/bookmark.svg'),
                                      ),
                                      Text(
                                        '20',
                                        style: TextStyle(
                                          color: AppColor.Neutral70,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 360,
                      height: 250,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 360,
                              height: 250,
                              decoration:
                                  BoxDecoration(color: Color(0xFF1C1D1F)),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 56,
                            child: Opacity(
                              opacity: 0.50,
                              child: Container(
                                width: 328,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 44,
                            top: 218,
                            child: Text(
                              '개인정보 처리방침 | 서비스 이용약관 | 환불규정',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 104,
                            top: 16,
                            child: Container(
                              width: 24,
                              height: 24,
                              child: SvgPicture.asset(
                                  'assets/main_resource/icon/lucide_facebook.svg'),
                            ),
                          ),
                          Positioned(
                            left: 168,
                            top: 16,
                            child: Container(
                              width: 24,
                              height: 24,
                              child: SvgPicture.asset(
                                  'assets/main_resource/icon/mdi_instagram.svg'),
                            ),
                          ),
                          Positioned(
                            left: 232,
                            top: 16,
                            child: Container(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                    'assets/main_resource/icon/basil_youtube-outline.svg')),
                          ),
                          Positioned(
                            left: 44,
                            top: 68,
                            child: Text(
                              '인사이드아웃 사회적 협동조합',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 44,
                            top: 94,
                            child: SizedBox(
                              width: 272,
                              child: Text(
                                '고유번호 : 324-82-00580 | 이사장 : 염민호 (와이엠에스닷코)\n통신판매업 신고번호 : 2022-경기김포-3659\n주소: 서울특별시 강서구 마곡중앙2로 11, 3층 305호\n         (마곡동, M밸리 W TOWER III)\n연락처 : 050-6683-1001\n고객센터 : cs@sniperfactory.com',
                                style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 1.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 64,
              child: BottomNavigationBarComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
