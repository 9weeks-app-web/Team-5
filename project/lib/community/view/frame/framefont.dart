import 'package:flutter/material.dart';
import 'package:team5/utill/color.dart';

class FrameFront extends StatefulWidget {
  const FrameFront({super.key});

  @override
  State<FrameFront> createState() => _FrameFrontState();
}

class _FrameFrontState extends State<FrameFront> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 148,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 32,
            child: SingleChildScrollView(
              child: Container(
                width: 140,
                height: 116,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.78, color: Color(0xFFE5EEFF)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 0,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/Thumbnail_Small (2).png'),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.00, 0.00),
                  end: Alignment(1, 0),
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 88, // 이미지의 아래에 위치하도록 조정
            child: SizedBox(
              width: 120,
              child: Text(
                '프론트엔드 개발자 급구',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 0.012,
                ),
              ),
            ),
          ),
          Positioned(
            left: 4,
            top: 97,
            child: Container(
              width: 132,
              height: 14,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 132,
                      child: Text(
                        '공모전   공모전 수상 도전',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.01,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 120,
            child: Container(
              width: 132,
              height: 20, // 높이 조정
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 12,
                    child: Text(
                      '모집현황',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF020202),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  SizedBox(
                    width: 20,
                    height: 12,
                    child: Text(
                      '1/4',
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 0.15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 86,
            top: 58,
            child: Container(
              height: 18,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: ShapeDecoration(
                color: Color(0xFFE5EEFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '온라인',
                      style: TextStyle(
                        color: Color(0xFF0059FF),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.01,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 86,
            top: 36,
            child: Container(
              width: 37,
              height: 18,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: ShapeDecoration(
                color: AppColor.WarningBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'D-3',
                      style: TextStyle(
                        color: Color(0xFFFF0000),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.01,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
