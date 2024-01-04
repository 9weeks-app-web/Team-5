import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/utill/color.dart';

class StudyCollectWidget extends StatelessWidget {
  const StudyCollectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 328,
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.Neutral5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.Primary10),
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.Primary100,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 48,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Text('온라인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    ))),
                            SizedBox(
                              width: 190,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/DetailedPage/Bookmark/blue.svg')
                          ],
                        ),
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
                                left: 10,
                                top: 30,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (3).png'),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (3).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_BIg (1).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 30,
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black87),
                                    child: Center(
                                      child: Text(
                                        '+2',
                                        style: TextStyle(
                                            color: AppColor.White,
                                            fontSize: 12),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 100,
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
                                left: 100,
                                top: 25,
                                child: Text(
                                  '함께 다자인 공부할 분들을 모집합니다.',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 42,
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
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 108,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                  left: 199,
                                  top: 60,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '5/',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                        const TextSpan(
                                            text: '10',
                                            style: TextStyle(
                                                color: AppColor.Primary100,
                                                fontSize: 7.65)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Text('12.27',
                            style: TextStyle(
                              color: AppColor.Neutral40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 328,
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.Neutral5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.Primary10),
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.Primary100,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 48,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Text('온라인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    ))),
                          ],
                        ),
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
                                left: 10,
                                top: 30,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (15).png'),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (23).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (16).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 30,
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black87),
                                    child: Center(
                                      child: Text(
                                        '+3',
                                        style: TextStyle(
                                            color: AppColor.White,
                                            fontSize: 12),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 100,
                                child: Text(
                                  '미라클 모닝 스터디',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 25,
                                child: Text(
                                  '상쾌한 아침을 알차게 시작할 분들만!',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 42,
                                child: Text(
                                  '전공무관 | 취준생 | 대학생 | 유연하게',
                                  style: TextStyle(
                                      color: AppColor.Neutral40,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 44,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                  left: 199,
                                  top: 60,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '6/',
                                            style: TextStyle(
                                                color: AppColor.Primary100,
                                                fontSize: 7.65)),
                                        const TextSpan(
                                            text: '30',
                                            style: TextStyle(
                                                color: AppColor.Primary100,
                                                fontSize: 7.65)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Text('12.27',
                            style: TextStyle(
                              color: AppColor.Neutral40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 328,
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.Neutral5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.Primary10),
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.Primary100,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 48,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Text('온라인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    ))),
                          ],
                        ),
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
                                left: 10,
                                top: 30,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (1).png'),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (24).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (21).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 30,
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black87),
                                    child: Center(
                                      child: Text(
                                        '+5',
                                        style: TextStyle(
                                            color: AppColor.White,
                                            fontSize: 12),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 100,
                                child: Text(
                                  'JAVA 한달 끝내기',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 25,
                                child: Text(
                                  '한달만에 JAVA에 입문해볼 분들을 모집합니다.',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 42,
                                child: Text(
                                  '개발 | 취준생 | 타이트하게',
                                  style: TextStyle(
                                      color: AppColor.Neutral40,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 158,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                  left: 199,
                                  top: 60,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '8/',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                        const TextSpan(
                                            text: '12',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Text('12.26',
                            style: TextStyle(
                              color: AppColor.Neutral40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 328,
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.Neutral5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.Primary10),
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.Primary100,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 48,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Text('온라인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    ))),
                          ],
                        ),
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
                                left: 10,
                                top: 30,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (6).png'),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (4).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (5).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 30,
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black87),
                                    child: Center(
                                      child: Text(
                                        '+3',
                                        style: TextStyle(
                                            color: AppColor.White,
                                            fontSize: 12),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 100,
                                child: Text(
                                  '어도비 맛보기',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 25,
                                child: Text(
                                  '어도비 툴 공부를 함께할 분들을 모집합니다.',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 42,
                                child: Text(
                                  '디자인 | 취준생 | 주니아 | 유연하게 ',
                                  style: TextStyle(
                                      color: AppColor.Neutral40,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 132,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                  left: 199,
                                  top: 60,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '6/',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                        const TextSpan(
                                            text: '10',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Text('12.26',
                            style: TextStyle(
                              color: AppColor.Neutral40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 328,
                  height: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.Neutral5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 48,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.Primary10),
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.Primary100,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                width: 48,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.Primary10),
                                child: Text('온라인',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    ))),
                          ],
                        ),
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
                                left: 10,
                                top: 30,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (11).png'),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (9).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                      'assets/communitystudy/Profile_Small (10).png'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 30,
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black87),
                                    child: Center(
                                      child: Text(
                                        '+17',
                                        style: TextStyle(
                                            color: AppColor.White,
                                            fontSize: 12),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 100,
                                child: Text(
                                  '개발자가 되어보자!',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 25,
                                child: Text(
                                  '개발 기초부터 심화까지 함께 달려볼 분들만!',
                                  style: TextStyle(
                                      color: AppColor.Neutral100,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 42,
                                child: Text(
                                  '개발 | 취준생 | 대학생 | 타이트하게',
                                  style: TextStyle(
                                      color: AppColor.Neutral40,
                                      fontSize: 10,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 100,
                                  top: 60,
                                  child: Container(
                                    width: 220,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                  left: 199,
                                  top: 60,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '20/',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                        const TextSpan(
                                            text: '20',
                                            style: TextStyle(
                                                color: AppColor.White,
                                                fontSize: 7.65)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Text('12.25',
                            style: TextStyle(
                              color: AppColor.Neutral40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
