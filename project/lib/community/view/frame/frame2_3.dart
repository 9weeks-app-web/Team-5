import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Frame2_3 extends StatefulWidget {
  const Frame2_3({super.key});

  @override
  State<Frame2_3> createState() => _Frame2_3State();
}

class _Frame2_3State extends State<Frame2_3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 328,
        height: 140,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFF5F8FF)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 12,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Thumbnail_BIg (5).png'), // 이미지의 경로에 맞게 수정해주세요
                    fit: BoxFit.cover, // 이미지가 영역을 채우도록 설정합니다.
                  ),
                ),
              ),
            ),
            Positioned(
              left: 102,
              top: 12,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 48,
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'D-20',
                                  style: TextStyle(
                                    color: Color(0xFF0059FF),
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 0.15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 60,
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(75),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '오프라인',
                                  style: TextStyle(
                                    color: Color(0xFF0059FF),
                                    fontSize: 10,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                    height: 0.15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '그래픽 디자이너 모집합니다!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 140,
                            height: 18,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 10,
                                  child: Text(
                                    '포트폴리오 직무 역량 강화',
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 12,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 110,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      '모집현황',
                      style: TextStyle(
                        color: Color(0xFF020202),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Row(
                      children: [
                        Text(
                          '1/2',
                          style: TextStyle(
                            color: Color(0xFF0059FF),
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/dropdown.svg',
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        SvgPicture.asset(
                          'assets/images/view.svg',
                        ),
                        Text(
                          '18',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/reply.svg',
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/bookmark3.svg',
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            height: 0.15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 12,
              child: Container(
                width: 24,
                height: 24,
                child: SvgPicture.asset(
                  'assets/images/bookmark.svg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
