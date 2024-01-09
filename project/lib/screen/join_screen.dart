import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../database/data_controller.dart';
import '../screen/user_controller.dart';
import '../utill/color.dart';
import '/screen/welcome_screen.dart';
import 'dart:async';

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageMainState();
}

class _JoinPageMainState extends State<JoinPage> {
  String selectedText = '';
  // 휴대폰 번호 인증
  String buttonText = '인증요청';
  Timer? _timer;
  int _start = 0;

  void startTimer() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) => setState(() {
        if (_start < 1) {
          timer.cancel();
        } else {
          _start = _start - 1;
        }
      }),
    );
  }

  UserController userController = Get.find();
  Data_Control data_control = Data_Control(); // HJ

  String errorMessage = '';
  bool _allSelected = false;
  bool isMobileButtonEnabled = false;
  List<bool> _selected = List.generate(4, (_) => false);
  String groupValue = '';

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    userController.mobileController.addListener(() {
      setState(() {
        // 입력이 숫자로만 이루어진 11자리인 경우에만 버튼 활성화
        isMobileButtonEnabled =
            userController.mobileController.text.length == 11 &&
                int.tryParse(userController.mobileController.text) != null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // x 버튼
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        shadowColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: GetBuilder<UserController>(
                  init: UserController(),
                  builder: (userController) => Column(
                    children: [
                      // 회원가입 안내 문구
                      const Text(
                        '회원가입',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // 이름 입력 인풋창
                      Container(
                        height: 102,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '이름',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 48,
                              child: TextFormField(
                                controller: userController.nameController,
                                focusNode: userController.nameFocusnode,
                                cursorColor: userController.isNameEmpty &&
                                        userController.nameFocusnode.hasFocus
                                    ? Colors.red
                                    : AppColor.Neutral40,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColor.Neutral5,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusColor: AppColor.Neutral40,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: -0.46,
                                  ),
                                  hintText: '이름 입력',
                                ),
                              ),
                            ),
                            userController.isNameEmpty &&
                                    userController.nameFocusnode.hasFocus
                                ? Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '필수 입력 칸입니다.',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ))
                                : Text(''),
                          ],
                        ),
                      ),
                      // 닉네임 입력 인풋창
                      Container(
                        height: 102,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '닉네임',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 48,
                              child: TextFormField(
                                controller: userController.nicknameController,
                                focusNode: userController.nicknameFocusnode,
                                cursorColor: userController.isNicknameEmpty &&
                                        userController
                                            .nicknameFocusnode.hasFocus
                                    ? Colors.red
                                    : AppColor.Neutral40,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColor.Neutral5,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusColor: AppColor.Neutral40,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: -0.46,
                                  ),
                                  hintText: '닉네임 입력',
                                ),
                              ),
                            ),
                            userController.isNicknameEmpty &&
                                    userController.nicknameFocusnode.hasFocus
                                ? Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '필수 입력 칸입니다.',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ))
                                : Text(''),
                          ],
                        ),
                      ),
                      // 이메일 입력 인풋창
                      Container(
                        height: 102,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '이메일',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 48,
                              child: TextFormField(
                                controller: userController.emailController,
                                focusNode: userController.emailFocusnode,
                                cursorColor: userController.isEmailEmpty &&
                                        userController.emailFocusnode.hasFocus
                                    ? Colors.red
                                    : AppColor.Neutral40,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColor.Neutral5,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusColor: AppColor.Neutral40,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: -0.46,
                                  ),
                                  hintText: '이메일 입력',
                                ),
                              ),
                            ),
                            if (userController.isEmailEmpty &&
                                userController.emailFocusnode.hasFocus)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '필수 입력 칸입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            else if (!userController.isEmailEmpty &&
                                !userController.isEmailValid)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '유효하지 않은 이메일 주소입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // 비밀번호 입력 인풋창
                      Container(
                        height: 102,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '비밀번호',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: userController.passwordController,
                                focusNode: userController.passwordFocusnode,
                                // autovalidateMode:
                                //     AutovalidateMode.onUserInteraction,
                                // validator: (value) {
                                //   if (value!.isEmpty) {
                                //     return '필수 입력 칸입니다.';
                                //   }
                                //   return null;
                                // },
                                obscureText: true,
                                cursorColor: userController.isNameEmpty &&
                                        userController.nameFocusnode.hasFocus
                                    ? Colors.red
                                    : AppColor.Neutral40,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColor.Neutral5,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusColor: AppColor.Neutral40,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Pretendard',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: -0.46,
                                    ),
                                    hintText: '비밀번호'),
                              ),
                            ),
                            if (userController.isPasswordEmpty &&
                                userController.passwordFocusnode.hasFocus)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '필수 입력 칸입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            if (!userController.isPasswordEmpty &&
                                !userController.isPasswordValid)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '유효하지 않은 비밀번호입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // 비밀번호 확인 입력 인풋창
                      Container(
                        height: 102,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '비밀번호 확인',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller:
                                  userController.confirmPasswordController,
                              focusNode:
                                  userController.confirmPasswordFocusnode,
                              obscureText: true,
                              cursorColor:
                                  userController.isConfirmPasswordEmpty &&
                                          userController
                                              .confirmPasswordFocusnode.hasFocus
                                      ? Colors.red
                                      : AppColor.Neutral40,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColor.Neutral5,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusColor: AppColor.Neutral40,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  hintStyle: const TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: -0.46,
                                  ),
                                  hintText: '비밀번호 재입력',
                                  errorText: errorMessage.isEmpty
                                      ? null
                                      : errorMessage),
                            ),
                            if (userController.isConfirmPasswordEmpty &&
                                userController
                                    .confirmPasswordFocusnode.hasFocus)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '필수 입력 칸입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            if (!userController.isConfirmPasswordEmpty &&
                                (userController
                                        .confirmPasswordController.text !=
                                    userController.passwordController.text))
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '비밀번호가 일치하지 않습니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                          ],
                        ),
                      ),

                      // 휴대폰 인증 - 통신사 선택
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '휴대폰 인증',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildContainer('SKT'),
                          buildContainer('KT'),
                          buildContainer('LG U+'),
                          buildContainer('알뜰폰'),
                        ],
                      ),
                      // 휴대폰 번호 입력 인풋창
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: userController.mobileController,
                              focusNode: userController.mobileFocusnode,
                              cursorColor: userController.isMobileEmpty &&
                                      userController.mobileFocusnode.hasFocus
                                  ? Colors.red
                                  : AppColor.Neutral40,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColor.Neutral5,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide.none,
                                ),
                                focusColor: AppColor.Neutral40,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                hintStyle: const TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: -0.46,
                                ),
                                errorStyle: TextStyle(
                                  height: 0.4,
                                  fontSize: 12,
                                  color: Colors.red,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: '휴대폰 번호 인증',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: isMobileButtonEnabled
                                  ? () {
                                      setState(() {
                                        buttonText = '재요청';
                                        _start = 180;
                                        startTimer();
                                      });
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(0.8),
                                  foregroundColor: Colors.white,
                                  backgroundColor: AppColor.Primary100,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  elevation: 0,
                                  minimumSize: const Size(76, 48)),
                              child: Text(
                                buttonText,
                                style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    fontSize: 16,
                                    color: AppColor.BackgroundBiue,
                                    letterSpacing: -0.48,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // 인증번호 입력
                      Container(
                        height: 86,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 48,
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller:
                                        userController.authenticationController,
                                    focusNode:
                                        userController.authenticationFocusnode,
                                    cursorColor:
                                        userController.isAuthenticationEmpty &&
                                                userController
                                                    .authenticationFocusnode
                                                    .hasFocus
                                            ? Colors.red
                                            : AppColor.Neutral40,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: AppColor.Neutral5,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusColor: AppColor.Neutral40,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 12),
                                      hintStyle: const TextStyle(
                                          fontFamily: 'Pretendard',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                      hintText: '인증번호 입력',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 12,
                                  right: 16,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 24,
                                    width: 47,
                                    padding: EdgeInsets.zero,
                                    child: _start > 0
                                        ? Text(
                                            '${_start ~/ 60}:${_start % 60 < 10 ? '0${_start % 60}' : _start % 60}',
                                            style: TextStyle(
                                              color: AppColor.Warning,
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ),
                              ],
                            ),
                            if (userController.isAuthenticationEmpty &&
                                userController.authenticationFocusnode.hasFocus)
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '필수 입력 칸입니다.',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // 약관동의 라디오버튼
              Column(
                children: [
                  GFCheckboxListTile(
                    padding: const EdgeInsets.all(0),
                    title: const Text(
                      '본인인증 약관 전체동의 (필수)',
                      style: TextStyle(
                          fontSize: 13.1, fontWeight: FontWeight.w500),
                    ),
                    value: _allSelected,
                    onChanged: (value) {
                      setState(() {
                        _allSelected = value;
                        _selected = List.generate(4, (_) => _allSelected);
                      });
                    },
                    position: GFPosition.start,
                    size: 20,
                    type: GFCheckboxType.circle,
                  ),
                  GFCheckboxListTile(
                    padding: const EdgeInsets.all(0.6),
                    title: const Text(
                      '개인정보 수집 이용 동의',
                      style: TextStyle(
                          fontSize: 13.1, fontWeight: FontWeight.w500),
                    ),
                    value: _selected[0],
                    onChanged: (value) {
                      setState(() {
                        _selected[0] = value;
                      });
                    },
                    position: GFPosition.start,
                    size: 20,
                    type: GFCheckboxType.circle,
                  ),
                  GFCheckboxListTile(
                    padding: const EdgeInsets.all(0.6),
                    title: const Text(
                      '고유식별 정보처리 동의',
                      style: TextStyle(
                          fontSize: 13.1, fontWeight: FontWeight.w500),
                    ),
                    value: _selected[1],
                    onChanged: (value) {
                      setState(() {
                        _selected[1] = value;
                      });
                    },
                    position: GFPosition.start,
                    size: 20,
                    type: GFCheckboxType.circle,
                  ),
                  GFCheckboxListTile(
                    padding: const EdgeInsets.all(0.6),
                    title: const Text(
                      '통신사 이용약관 동의',
                      style: TextStyle(
                          fontSize: 13.1, fontWeight: FontWeight.w500),
                    ),
                    value: _selected[2],
                    onChanged: (value) {
                      setState(() {
                        _selected[2] = value;
                      });
                    },
                    position: GFPosition.start,
                    size: 20,
                    type: GFCheckboxType.circle,
                  ),
                  GFCheckboxListTile(
                    padding: const EdgeInsets.all(0.6),
                    title: const Text(
                      '서비스 이용약관 동의',
                      style: TextStyle(
                          fontSize: 13.1, fontWeight: FontWeight.w500),
                    ),
                    value: _selected[3],
                    onChanged: (value) {
                      setState(() {
                        _selected[3] = value;
                      });
                    },
                    position: GFPosition.start,
                    size: 20,
                    type: GFCheckboxType.circle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  // 다음 버튼
                  Container(
                    padding: EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: (_selected.every((bool val) => val) &&
                              userController.nameController.text.isNotEmpty &&
                              userController.emailController.text.isNotEmpty &&
                              userController
                                  .nicknameController.text.isNotEmpty &&
                              userController
                                  .passwordController.text.isNotEmpty &&
                              userController
                                  .confirmPasswordController.text.isNotEmpty &&
                              userController.mobileController.text.isNotEmpty)
                          // 기존 코드
                          // ? () {
                          // Get.to(const WelcomePage());
                          // HJ 코드 ------------->
                          ? () async {
                              Future<bool> join_success =
                                  data_control.join_input(
                                      userController.nameController.text,
                                      userController.nicknameController.text,
                                      userController.emailController.text,
                                      userController.passwordController.text,
                                      userController.mobileController.text);
                              if (await join_success) {
                                Get.to(const WelcomePage());
                              }
                              // <------------
                            }
                          : null,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Colors.grey;
                            }
                            return AppColor.Primary100;
                          },
                        ),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return const BorderSide(color: Colors.grey);
                            }
                            return BorderSide(color: AppColor.Primary100);
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: AppColor.Primary100),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size(MediaQuery.of(context).size.width, 50)),
                      ),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '다음',
                              style: TextStyle(
                                  color: AppColor.BackgroundBiue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  height: 22 / 18,
                                  letterSpacing: -0.03),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 통신사 선택 위젯
  Widget buildContainer(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedText = text;
        });
      },
      child: Container(
        width: 76,
        height: 48,
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
              color: selectedText == text
                  ? AppColor.Primary100
                  : const Color(0x03000000)),
          color: selectedText == text ? AppColor.BackgroundBiue : Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              color: selectedText == text ? AppColor.Primary100 : Colors.black),
        ),
      ),
    );
  }
}
