import 'package:flutter/material.dart';

import 'package:team5/utill/color.dart';

class StudyWidget extends StatelessWidget {
  const StudyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: AppColor.Primary10,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                        bottom: 43,
                        left: -3,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha (10).png',
                          ),
                        )),
                    Positioned(
                        left: 34,
                        top: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha (6).png',
                          ),
                        )),
                    Positioned(
                        bottom: -1,
                        left: 14,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                              'assets/communitystudy/Profile_BIg (5).png'),
                        )),
                    Positioned(
                        right: 10,
                        bottom: -1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/디자인3_프로필.png'),
                        )),
                    Positioned(
                        right: -1,
                        bottom: 45,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/디자인1_프로필.png'),
                        )),
                    Positioned(
                        left: 30,
                        top: 48,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.White,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '모집중',
                              style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontFamily: 'Pretendard',
                                  fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: -30,
                      child: Container(
                        width: 116,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.Primary5)),
                        child: Text(
                          'UX/UI 마스터',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFECD0),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                        bottom: 43,
                        left: -3,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/untitled portrait-3.png',
                          ),
                        )),
                    Positioned(
                        left: 34,
                        top: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha (1).png',
                          ),
                        )),
                    Positioned(
                        bottom: -1,
                        left: 14,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                              'assets/communitystudy/Profile_Small (14).png'),
                        )),
                    Positioned(
                        right: 10,
                        bottom: -1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Mask group-1.png'),
                        )),
                    Positioned(
                        right: -1,
                        bottom: 45,
                        child: Container(
                          width: 40,
                          height: 40,
                          child:
                              Image.asset('assets/pr/untitled portrait-4.png'),
                        )),
                    Positioned(
                        left: 30,
                        top: 48,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.White,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '모집중',
                              style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontFamily: 'Pretendard',
                                  fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: -30,
                      child: Container(
                        width: 116,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.Primary5)),
                        child: Text(
                          '미라클 모닝 스터디',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFDFDF),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                        bottom: 43,
                        left: -3,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/untitled portrait-2.png',
                          ),
                        )),
                    Positioned(
                        left: 34,
                        top: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha 2.png',
                          ),
                        )),
                    Positioned(
                        bottom: -1,
                        left: 14,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Mask group-3.png'),
                        )),
                    Positioned(
                        right: 10,
                        bottom: -1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child:
                              Image.asset('assets/pr/untitled portrait-1.png'),
                        )),
                    Positioned(
                        right: -1,
                        bottom: 45,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Mask group-2.png'),
                        )),
                    Positioned(
                        left: 30,
                        top: 48,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.White,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '모집중',
                              style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontFamily: 'Pretendard',
                                  fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: -30,
                      child: Container(
                        width: 116,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.Primary5)),
                        child: Text(
                          'JAVA 한달 끝내기',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFFD8F9D0),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                        bottom: 43,
                        left: -3,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/Mask group.png',
                          ),
                        )),
                    Positioned(
                        left: 34,
                        top: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha (7).png',
                          ),
                        )),
                    Positioned(
                        bottom: -1,
                        left: 14,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Group 1437255684.png'),
                        )),
                    Positioned(
                        right: 10,
                        bottom: -1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Group 1437256016.png'),
                        )),
                    Positioned(
                        right: -1,
                        bottom: 45,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/untitled portrait.png'),
                        )),
                    Positioned(
                        left: 30,
                        top: 48,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.White,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '진행중',
                              style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontFamily: 'Pretendard',
                                  fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: -30,
                      child: Container(
                        width: 116,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.Primary5)),
                        child: Text(
                          '어도비 맛보기',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFFF6DBFF),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    Positioned(
                        bottom: 43,
                        left: -3,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/기타1_프로필.png',
                          ),
                        )),
                    Positioned(
                        left: 34,
                        top: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/pr/peeps-avatar-alpha (2).png',
                          ),
                        )),
                    Positioned(
                        bottom: -1,
                        left: 14,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Group 1437255685.png'),
                        )),
                    Positioned(
                        right: 10,
                        bottom: -1,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Group 1437255683.png'),
                        )),
                    Positioned(
                        right: -1,
                        bottom: 45,
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/pr/Ellipse 6978.png'),
                        )),
                    Positioned(
                        left: 30,
                        top: 48,
                        child: Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.White,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '진행중',
                              style: TextStyle(
                                  color: AppColor.Primary100,
                                  fontFamily: 'Pretendard',
                                  fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: -30,
                      child: Container(
                        width: 116,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.Primary5)),
                        child: Text(
                          '개발자가 되어보자!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.Neutral100,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
