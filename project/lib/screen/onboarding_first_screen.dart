import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screen/SecondOnboringPage.dart';
import '/screen/community_screen.dart';
import '/database/data_controller.dart';
import '/screen/user_controller.dart';
import '/screen/onboarding_controller.dart';

class OnBoardingFirstPage extends StatefulWidget {
  const OnBoardingFirstPage({super.key});

  @override
  State<OnBoardingFirstPage> createState() => _OnBoardingFirstPageState();
}

class _OnBoardingFirstPageState extends State<OnBoardingFirstPage> {
  Data_Control data_control = Data_Control(); // HJ

  int progressPage = 1;
  bool validate = false;
  String userName = '';

  Color progressBar = Color(0xff337AFF);
  Color textFormFieldFontColor = const Color(0xff999999);
  Color textFormFieldColor = const Color(0xfff8f8f9);
  Color buttonBorderColor = const Color(0xff0059ff);
  Color buttonSelectedColor = const Color(0xfff5f8ff);
  Color buttonNormalColor = Color(0xfff8f8f9);
  Color buttonColor = const Color(0xff0059ff);

  final _onBoardingController = Get.put(OnBoardingController());
  UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 30,
        leading: Container(
          // FIXME: 뭔가 이상하긴한데.. 나중에 고쳐야할 것
          margin: EdgeInsets.only(
            left: 16,
            // right: 8,
          ),
          height: 24,
          width: 24,
          alignment: Alignment.center,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 11.5,
            ),
          ),
        ),
        title: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            minHeight: 8,
            borderRadius: BorderRadius.circular(5),
            color: progressBar,
            value: progressPage / 4,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0, 0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: progressPage.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: ' / 4',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                '${userController.nicknameController.text}님 환영합니다!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 36,
                child: Text(
                  '성별과 출생년도를 설정하면\n비슷한 사람들의 포트폴리오와 채용공고를 볼 수 있어요',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 328,
                height: 230,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '성별',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildContainer('남성'),
                        buildContainer('여성'),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '생년월일',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _onBoardingController.birthdayController,
                      keyboardType: TextInputType.number,
                      onTap: () {
                        _onBoardingController.birthdayController
                            .clear(); // 텍스트 필드를 클릭하면 텍스트를 초기화함
                        _onBoardingController.updateColor(
                            textFormFieldColor, textFormFieldFontColor);
                      },
                      onChanged: (val) {
                        if (val.length == 6) {
                          FocusScope.of(context).unfocus();
                          _onBoardingController.birthdayController.text =
                              _onBoardingController.formattedBirthday;
                          _onBoardingController.birthdayController.selection =
                              TextSelection.fromPosition(
                            TextPosition(
                                offset: _onBoardingController
                                    .birthdayController.text.length),
                          );
                          _onBoardingController.updateColor(
                              buttonSelectedColor, buttonBorderColor);
                        }
                      },
                      textAlign: TextAlign.center,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '필수 입력 칸입니다.';
                        }
                        if (value.length != 6 && value.length != 11) {
                          return '6자리를 입력해주세요.';
                        }
                        // FIXME: 월과 일에 대한 유효성 검사 적용 안되고 있음..
                        if (value.length == 6) {
                          int month = int.parse(value.substring(2, 4));
                          int day = int.parse(value.substring(4, 6));
                          if (month < 1 || month > 12) {
                            return '월은 01부터 12까지만 입력 가능합니다.';
                          }
                          if (day < 1 || day > 31) {
                            return '일은 01부터 31까지만 입력 가능합니다.';
                          }
                          return null;
                        }
                      },
                      cursorColor: textFormFieldFontColor,
                      style: TextStyle(
                        color: _onBoardingController.textColor.value,
                        fontWeight: _onBoardingController.textColor.value ==
                                buttonBorderColor
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: _onBoardingController.inputColor.value,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: _onBoardingController.borderColor.value ==
                                  _onBoardingController.textColor.value
                              ? BorderSide(
                                  color:
                                      _onBoardingController.borderColor.value,
                                )
                              : BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        focusColor: textFormFieldFontColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                          color: textFormFieldFontColor,
                        ),
                        hintText: 'ex. 990101',
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 328,
                    height: 48,
                    child: ElevatedButton(
                      // onPressed: () { // 기존 코드
                      //  Get.to(
                      //     OnBoardingFirstPage(), // FIXME: 다음 페이지로 연결
                      //     arguments: OnBoardingController(),
                      //   );
                      // HJ 코드 --------------->
                      onPressed: () async {
                        String input_sex = _onBoardingController.getSex();
                        bool input_state = await data_control.input_information(
                            'page_1', [
                          input_sex,
                          _onBoardingController.birthdayController.text
                        ]);
                        if (input_state) {
                          Get.to(
                            SecondOnboringPage(), // FIXME: 다음 페이지로 연결
                            arguments: OnBoardingController(),
                          );
                        }
                        // <-------------
                      },
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return FittedBox(
                            child: Text(
                              '다음',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            fit: BoxFit.scaleDown,
                          );
                        },
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(buttonColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: buttonColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String text) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _onBoardingController.saveSex(text);
        },
        child: Container(
          width: 160,
          height: 48,
          margin: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
                color: _onBoardingController.sex == text
                    ? buttonBorderColor
                    : const Color(0x03000000)),
            color: _onBoardingController.sex == text
                ? buttonSelectedColor
                : buttonNormalColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: _onBoardingController.sex == text
                    ? buttonBorderColor
                    : textFormFieldFontColor),
          ),
        ),
      ),
    );
  }
}
