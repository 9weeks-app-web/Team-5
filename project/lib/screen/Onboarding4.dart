import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';

class Onboarding4 extends StatefulWidget {
  const Onboarding4({super.key});

  @override
  State<Onboarding4> createState() => _Onboarding4State();
}

class _Onboarding4State extends State<Onboarding4> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;
  bool _isPressed6 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              width: 360,
              height: 740,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      width: 360,
                      height: 48,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.chevron_left)),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width: 296,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF337AFF),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4 ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF030303),
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '/ 4',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF999999),
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      margin: EdgeInsets.only(top: 24),
                      child: Text(
                        '스팩폴리오를 통해 무엇을',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '얻고 싶으신가요?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 4),
                      height: 36,
                      child: Text(
                        '가장 원하는 세 가지를 선택해주세요',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 328,
                      height: 368,
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 328,
                                height: 64,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed1 = !_isPressed1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    primary: _isPressed1
                                        ? Color(0xFFF5F8FF)
                                        : Color(0xFFF8F8F9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: _isPressed1
                                            ? Color(0xFF0059FF)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          '포트폴리오 공유하기',
                                          style: TextStyle(
                                              color: _isPressed1
                                                  ? Color(0xFF0059FF)
                                                  : Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 328,
                                height: 64,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed2 = !_isPressed2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    primary: _isPressed2
                                        ? Color(0xFFF5F8FF)
                                        : Color(0xFFF8F8F9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: _isPressed2
                                            ? Color(0xFF0059FF)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          '포트폴리오 탐색하기',
                                          style: TextStyle(
                                              color: _isPressed2
                                                  ? Color(0xFF0059FF)
                                                  : Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 328,
                                height: 64,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed3 = !_isPressed3;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    primary: _isPressed3
                                        ? Color(0xFFF5F8FF)
                                        : Color(0xFFF8F8F9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: _isPressed3
                                            ? Color(0xFF0059FF)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          '프로젝트나 스터디 탐색 및 팀원 구하기',
                                          style: TextStyle(
                                              color: _isPressed3
                                                  ? Color(0xFF0059FF)
                                                  : Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 328,
                                height: 64,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed4 = !_isPressed4;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    primary: _isPressed4
                                        ? Color(0xFFF5F8FF)
                                        : Color(0xFFF8F8F9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: _isPressed4
                                            ? Color(0xFF0059FF)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          '커뮤니티 활동으로 정보 공유하기',
                                          style: TextStyle(
                                              color: _isPressed4
                                                  ? Color(0xFF0059FF)
                                                  : Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 328,
                                height: 64,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed5 = !_isPressed5;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    primary: _isPressed5
                                        ? Color(0xFFF5F8FF)
                                        : Color(0xFFF8F8F9),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: _isPressed5
                                            ? Color(0xFF0059FF)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          '채용 정보 탐색하기',
                                          style: TextStyle(
                                              color: _isPressed5
                                                  ? Color(0xFF0059FF)
                                                  : Color(0xFF999999),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        '나중에 변경할 수 있어요 편하게 입력해 주세요',
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 328,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPressed6 = !_isPressed6;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          primary: _isPressed6
                              ? Color(0xFF0059FF)
                              : Color(0xFFE6E6E6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: _isPressed6
                                  ? Color(0xFF0059FF)
                                  : Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '완료',
                              style: TextStyle(
                                  color: _isPressed6
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF999999),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
