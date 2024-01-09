import 'package:flutter/material.dart';
import '../screen/join_screen.dart';
import '../screen/mainPage.dart';
import '../screen/passwordpage_1.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
FocusNode _passwordFocusNode = FocusNode(); // 새로운 FocusNode 생성

class _LoginPage2State extends State<LoginPage2> {
  String? _errortext;
  String? _errortext2;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                  16,
                  100,
                  16,
                  10,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 156,
                      height: 40,
                      child: Image.asset(
                        'assets/images/sfac.png',
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 328,
                      height: 74,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '이메일',
                                  style: TextStyle(
                                    color: Color(0xFF030303),
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                  ),
                                ),
                                if (_errortext != null)
                                  Text(
                                    _errortext!,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 10), // 에러 메시지와 TextField 간 간격 조정

                            Container(
                              width: 328,
                              height: 48, // 높이를 40으로 변경
                              child: Stack(
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        final emailPattern = RegExp(
                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                        );
                                        if (!emailPattern.hasMatch(value)) {
                                          _errortext = '올바른 아이디를 입력해주세요';
                                        } else {
                                          _errortext = null;
                                        }
                                      });
                                    },
                                    onEditingComplete: () {
                                      if (_errortext == null) {
                                        FocusScope.of(context)
                                            .requestFocus(_passwordFocusNode);
                                      }
                                    },
                                    style: TextStyle(
                                      color: _errortext != null
                                          ? Colors.red
                                          : Colors.black,
                                      // 에러 메시지가 있을 때는 빨간색, 없을 때는 검은색으로 설정
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'abcdefg123@gmail.com',
                                      filled: true,
                                      fillColor: _errortext != null
                                          ? Colors.red.withOpacity(0.1)
                                          : Color(0xFFF3F3F3),
                                      hintStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF999999),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 328,
                      height: 74,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '비밀번호',
                                  style: TextStyle(
                                      color: Color(0xFF030303), fontSize: 14),
                                ),
                                if (_errortext2 != null)
                                  Text(_errortext2!,
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                      )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 328,
                              height: 48,
                              child: Stack(
                                children: [
                                  TextField(
                                    enabled: _errortext = null,
                                    controller: _passwordController,
                                    focusNode:
                                        _passwordFocusNode, // FocusNode 연결
                                    onChanged: (value) {
                                      setState(() {
                                        if (value.length < 6) {
                                          _errortext2 = '6자 이상으로 입력해주세요';
                                        } else {
                                          _errortext2 = null;
                                        }
                                      });
                                    },
                                    maxLines: 1,
                                    obscureText: _obscureText,
                                    style: TextStyle(
                                      color: _errortext != null
                                          ? Colors.red
                                          : Colors.black,
                                      // 에러 메시지가 있을 때는 빨간색, 없을 때는 검은색으로 설정
                                    ),
                                    decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureText =
                                                !_obscureText; // 상태 토글
                                          });
                                        },
                                        child: Icon(
                                          _obscureText
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                      errorText: _errortext2,
                                      hintText: '6자 이상의 비밀번호',
                                      filled: true,
                                      fillColor: _errortext2 != null
                                          ? Colors.red.withOpacity(0.1)
                                          : Color(0xFFF3F3F3),
                                      hintStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF999999)),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // if (Form.of(context)!.validate()) {
                        // }
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0059FF), // 색상을 #337AFF로 지정
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // 반경 10px
                        ),
                      ),
                      child: Container(
                        width: 328.0,
                        height: 48.0,
                        alignment: Alignment.center,
                        child: Text('로그인',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF), // 텍스트 색상을 #FFFFFF로 지정
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                              height: 0.07,
                              letterSpacing: -0.54,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF666666),
                                fontWeight: FontWeight.w700),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JoinPage()));
                          },
                        ),
                        Container(
                          width: 1,
                          height: 20, // 원하는 높이로 조정하세요
                          color: Color(0xFFE6E6E6),
                        ),
                        TextButton(
                          child: Text(
                            '아이디찾기',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF666666),
                                fontWeight: FontWeight.w700),
                          ),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => findlogin()));
                          },
                        ),
                        Container(
                          width: 1,
                          height: 20, // 원하는 높이로 조정하세요
                          color: Color(0xFFE6E6E6),
                        ),
                        TextButton(
                          child: Text(
                            '비밀번호찾기',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF666666),
                                fontWeight: FontWeight.w700),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Passwordpage_1()));
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFE6E6E6),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            '또는',
                            style: TextStyle(
                              color: Color(0xFFB3B3B3),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 120,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFE6E6E6),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage("assets/images/kakao.png"),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/images/google.jpeg",
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage("assets/images/naver.png"),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage("assets/images/apple.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
