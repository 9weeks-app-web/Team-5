import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team5/screen/StudyPage.dart';
import 'package:team5/utill/color.dart';
import 'package:team5/widget/StudyCollectWidget.dart';

import 'bottom_nagivation_bar.dart';

class CommunityStudyPage extends StatefulWidget {
  const CommunityStudyPage({super.key});

  @override
  State<CommunityStudyPage> createState() => _CommunityStudyPageState();
}

class _CommunityStudyPageState extends State<CommunityStudyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.navigate_before)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SvgPicture.asset('assets/Icon/detailedpage/bookmark/gray.svg'),
                Text('10')
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.Primary10),
                        child: Center(
                          child: Text('모집중',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.Primary100,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Pretendard',
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                          width: 48,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.Primary10),
                          child: Center(
                            child: Text('온라인',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Pretendard',
                                )),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                          ),
                          Positioned(
                            top: 6,
                            child: Text(
                              'UI/UX 마스터',
                              style: TextStyle(
                                  color: AppColor.Neutral100,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            child: Text(
                              '전공무관 | 취준생 | 타이트하게',
                              style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (2).png'),
                                ),
                                Text(
                                  '손은별',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text('24.01.01',
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Pretendard',
                          )),
                      SizedBox(
                        width: 240,
                      ),
                      SvgPicture.asset('assets/icons/Eye.svg'),
                      Text(
                        '10',
                        style:
                            TextStyle(fontSize: 10, color: AppColor.Neutral100),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset('assets/icons/Bubble.svg'),
                      Text(
                        '4',
                        style:
                            TextStyle(fontSize: 10, color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 328,
                    height: 1,
                    color: AppColor.Neutral5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: ' 참가인원 ',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColor.Neutral100,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '5/10',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColor.Neutral100,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320,
                        height: 83,
                      ),
                      Positioned(
                        left: 10,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (1).png'),
                                ),
                                Text(
                                  '손은별',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 60,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (3).png'),
                                ),
                                Text(
                                  '강건',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 110,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (2).png'),
                                ),
                                Text(
                                  '문다운',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 160,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (5).png'),
                                ),
                                Text(
                                  '정가을',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 210,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (4).png'),
                                ),
                                Text(
                                  '문바다',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 260,
                        child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black87),
                            child: Center(
                              child: Text(
                                '+0',
                                style: TextStyle(
                                  color: AppColor.White,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Text('진행상황',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColor.Neutral100,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/pr/progressbar.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 300,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: AppColor.Primary10),
                            child: Text(
                              '장소 선정',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Primary100,
                                  height: 2.5),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 300,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: AppColor.Primary10),
                            child: Text(
                              '참여 인원 모집',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Primary100,
                                  height: 2.5),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 300,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: Color(0xFFF8F8F9)),
                            child: Text(
                              '사전 모임',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Neutral100,
                                  height: 2.5),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 300,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: Color(0xFFF8F8F9)),
                            child: Text(
                              '스터디 시작',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Neutral100,
                                  height: 2.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 328,
                    height: 1,
                    color: AppColor.Neutral5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '상세내용',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        color: AppColor.Neutral100),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (1).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '모집기간',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 76,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '24.01.01',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('~'),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 76,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '24.01.31',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (4).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '스터디 장소',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 101,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '서울시 강남구',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 101,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '서울시 서초구',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (5).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '스터디 분야',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 61,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'UX/UI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 61,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'BX/BI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 61,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'GUI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                            width: 97,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Color(0xFFF3F3F3)),
                            ),
                            child: Text(
                              '그래픽 디자인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 2.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (3).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '스터디 프로그램',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 63,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'Figma',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 92,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'Photoshop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 92,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'Illustrator',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: 73,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFF3F3F3)),
                      ),
                      child: Text(
                        'AI생성툴',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            height: 2.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (2).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '키워드',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 73,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '전공무관',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 61,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '취준생',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 73,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '타이트한',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 49,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '취직',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 85,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '포트폴리오',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (7).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '내용',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '• 스터디 목표: UI/UX 기초 마스터하기\n ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                            TextSpan(
                                text: '• 스터디 횟수: 주 3회\n',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                            TextSpan(
                                text:
                                    '• 커리큘럼: 1주차 - UI/UX 기초 마스터하기 \n                  2주차 - 피그마 배워보기  \n                  3주차 - 디자인 진행해보기 \n                  4주차 - 간단한 결과물 만들어보기\n',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                            TextSpan(
                                text: '• 스터디 소개: UI/UX기초를 배우기 위한 스터디 입니다.\n ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                            TextSpan(
                                text:
                                    '• 개설이유: 같이 공부하면서 정보 공유도 하면서\n 커뮤니티를 쌓으면 좋을 거 같아 개설하게 되었습니다.\n',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                            TextSpan(
                                text:
                                    '• 스터디 관련 주의사항: 불참이 잦을 경우 불이익이 있을 수 있으니 끝까지 포기하지 않고 했으면 좋겠습니다.\n',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF666666))),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                      children: [],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/communitystudy/3Dicon (6).png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '연락처',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: AppColor.Neutral100),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 142,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '010 - 9630 - 8642',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 186,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            'Sfacpolio9630@sfac.com',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 129,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFFF3F3F3)),
                          ),
                          child: Text(
                            '@Sfacpolio9630',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                height: 2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(50),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 0,
                          backgroundColor: AppColor.Primary100),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => FindokLoginPage()),
                        // );
                      },
                      child: Text(
                        '참여하기',
                        style: TextStyle(
                            color: AppColor.White,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 328,
                    height: 1,
                    color: AppColor.Neutral5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('댓글 4',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 288,
                        height: 32,
                        child: Stack(
                          children: [
                            TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: '댓글을 입력하세요',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  fillColor: Color(0xFFF8F8F9),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                            Positioned(
                              right: 5,
                              top: 4,
                              child: SvgPicture.asset(
                                  'assets/Icon/detailedpage/Lock/gray.svg'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.Primary100),
                        child: Center(
                          child: Container(
                            width: 12,
                            height: 15,
                            child: SvgPicture.asset(
                              'assets/Icon/detailedpage/Send.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/communitystudy/Profile_Small (20).png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('정가을',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Text('스터디 장소를 상세하게 공유받을 수 있을까요?',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 7,
                      ),
                      SvgPicture.asset(
                        'assets/Icon/detailedpage/Dot.svg',
                        width: 14,
                        height: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/Icon/detailedpage/Reply.svg'),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/communitystudy/Profile_Small (2).png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('손은별',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Text('작성자',
                          style: TextStyle(
                            color: AppColor.Primary100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 11,
                      ),
                      Text('물론입니다! 연락처 남겨주시겠어요?',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SvgPicture.asset(
                        'assets/Icon/detailedpage/Dot.svg',
                        width: 14,
                        height: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/communitystudy/Profile_Small (20).png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('정가을',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Designerjeong@sfac.com으로 부탁드립니\n다.',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      SvgPicture.asset(
                        'assets/Icon/detailedpage/Dot.svg',
                        width: 14,
                        height: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/Icon/detailedpage/Reply.svg'),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/communitystudy/Profile_Small (2).png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('손은별',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Text('작성자',
                          style: TextStyle(
                            color: AppColor.Primary100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text('연락드렸습니다! 확인부탁드려요~',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(
                        'assets/Icon/detailedpage/Dot.svg',
                        width: 14,
                        height: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BottomNavigationBarComponent()
          ],
        ),
      ),
    );
  }
}
