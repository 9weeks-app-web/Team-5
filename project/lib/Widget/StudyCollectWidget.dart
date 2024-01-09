import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:team5/utill/color.dart';

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
                              child: Center(
                                child: Text('모집중',
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    )),
                              ),
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
                                child: Center(
                                  child: Text('온라인',
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      )),
                                )),
                            SizedBox(
                              width: 178,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/detailedpage/bookmark/blue.svg')
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
                                left: 15,
                                child: Image.asset('assets/pro/pr1.png'),
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
                                    width: 188,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 101,
                                  top: 60,
                                  child: Container(
                                    width: 108,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                left: 294,
                                top: 60,
                                child: Text('5/10 명',
                                    style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 7.65)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Text('12.27',
                                style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pretendard',
                                )),
                            SizedBox(
                              width: 190,
                            ),
                            SvgPicture.asset('assets/icons/Eye.svg'),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/Bubble.svg'),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/MainPage/interaction/bookmark.svg'),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
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
                              child: Center(
                                child: Text('모집중',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    )),
                              ),
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
                                child: Center(
                                  child: Text('온라인',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      )),
                                )),
                            SizedBox(
                              width: 178,
                            ),
                            SvgPicture.asset(
                              'assets/Icon/detailedpage/bookmark/gray.svg',
                            )
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
                                left: 15,
                                child: Image.asset('assets/pro/pr2.png'),
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
                                    width: 188,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 101,
                                  top: 60,
                                  child: Container(
                                    width: 44,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                left: 294,
                                top: 60,
                                child: Text('6/30 명',
                                    style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 7.65)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Text('12.27',
                                style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pretendard',
                                )),
                            SizedBox(
                              width: 190,
                            ),
                            SvgPicture.asset('assets/icons/Eye.svg'),
                            Text(
                              '12',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/Bubble.svg'),
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/MainPage/interaction/bookmark.svg'),
                            Text(
                              '14',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
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
                              child: Center(
                                child: Text('모집중',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    )),
                              ),
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
                                child: Center(
                                  child: Text('온라인',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      )),
                                )),
                            SizedBox(
                              width: 178,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/detailedpage/bookmark/gray.svg')
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
                                child: Image.asset('assets/pro/pr3.png'),
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
                                    width: 188,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 101,
                                  top: 60,
                                  child: Container(
                                    width: 138,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                left: 294,
                                top: 60,
                                child: Text('8/12 명',
                                    style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 7.65)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Text('12.26',
                                style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pretendard',
                                )),
                            SizedBox(
                              width: 185,
                            ),
                            SvgPicture.asset('assets/icons/Eye.svg'),
                            Text(
                              '24',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/Bubble.svg'),
                            Text(
                              '6',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/MainPage/interaction/bookmark.svg'),
                            Text(
                              '20',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
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
                              child: Center(
                                child: Text('모집중',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    )),
                              ),
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
                                child: Center(
                                  child: Text('온라인',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      )),
                                )),
                            SizedBox(
                              width: 178,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/detailedpage/bookmark/gray.svg')
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
                                  child: Image.asset('assets/pro/pr4.png')),
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
                                  '디자인 | 취준생 | 주니어 | 유연하게 ',
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
                                    width: 188,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF0F4FB)),
                                  )),
                              Positioned(
                                  left: 101,
                                  top: 60,
                                  child: Container(
                                    width: 108,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                left: 294,
                                top: 60,
                                child: Text('6/10 명',
                                    style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 7.65)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Text('12.26',
                                style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pretendard',
                                )),
                            SizedBox(
                              width: 190,
                            ),
                            SvgPicture.asset('assets/icons/Eye.svg'),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/Bubble.svg'),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/MainPage/interaction/bookmark.svg'),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
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
                              child: Center(
                                child: Text('모집중',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColor.Primary100,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Pretendard',
                                    )),
                              ),
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
                                child: Center(
                                  child: Text('온라인',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Pretendard',
                                      )),
                                )),
                            SizedBox(
                              width: 178,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/detailedpage/bookmark/gray.svg')
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
                                child: Image.asset('assets/pro/pr5.png'),
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
                                  left: 101,
                                  top: 60,
                                  child: Container(
                                    width: 188,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.Primary60),
                                  )),
                              Positioned(
                                left: 294,
                                top: 60,
                                child: Text('20/20 명',
                                    style: TextStyle(
                                        color: AppColor.Primary100,
                                        fontSize: 7.65)),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        child: Row(
                          children: [
                            Text('12.25',
                                style: TextStyle(
                                  color: AppColor.Neutral40,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Pretendard',
                                )),
                            SizedBox(
                              width: 180,
                            ),
                            SvgPicture.asset('assets/icons/Eye.svg'),
                            Text(
                              '44',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/Bubble.svg'),
                            Text(
                              '24',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                'assets/Icon/MainPage/interaction/bookmark.svg'),
                            Text(
                              '36',
                              style: TextStyle(
                                  fontSize: 10, color: AppColor.Neutral100),
                            )
                          ],
                        ),
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
