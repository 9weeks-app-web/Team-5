import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team5/screen/bottom_nagivation_bar.dart';
import 'package:team5/utill/color.dart';

class StudyFilter extends StatefulWidget {
  const StudyFilter({super.key});

  @override
  State<StudyFilter> createState() => _StudyFilterState();
}

class _StudyFilterState extends State<StudyFilter> {
  List<String> studyList = ['Figma', 'Final Cut pro', 'Fusion'];
  String selectedStudy = 'Figma';

  Color _onbuttonColor = AppColor.Neutral10;
  Color _joinbuttonColor = AppColor.Neutral10;
  Color _ingbuttonColor = AppColor.Neutral10;

  Color _ontextColor = AppColor.Neutral100;
  Color _jointextColor = AppColor.Neutral100;
  Color _ingtextColor = AppColor.Neutral100;

  Color _onbackgroundColor = AppColor.Neutral5;
  Color _joinbackgroundColor = AppColor.Neutral5;
  Color _ingbackgroundColor = AppColor.Neutral5;

  void _onButtonClick() {
    setState(() {
      _onbuttonColor = AppColor.Primary100;
      _joinbuttonColor = AppColor.Neutral10;
      _ingbuttonColor = AppColor.Neutral10;

      _ontextColor = AppColor.Primary100;
      _jointextColor = AppColor.Neutral100;
      _ingtextColor = AppColor.Neutral100;

      _onbackgroundColor = AppColor.Primary10;
      _joinbackgroundColor = AppColor.Neutral5;
      _ingbackgroundColor = AppColor.Neutral5;
    });
  }

  void _joinButtonClick() {
    setState(() {
      _onbuttonColor = AppColor.Neutral10;
      _joinbuttonColor = AppColor.Primary100;
      _ingbuttonColor = AppColor.Neutral10;

      _ontextColor = AppColor.Neutral100;
      _jointextColor = AppColor.Primary100;
      _ingtextColor = AppColor.Neutral100;

      _onbackgroundColor = AppColor.Neutral5;
      _joinbackgroundColor = AppColor.Primary10;
      _ingbackgroundColor = AppColor.Neutral5;
    });
  }

  void _ingButtonClick() {
    setState(() {
      _onbuttonColor = AppColor.Neutral10;
      _joinbuttonColor = AppColor.Neutral10;
      _ingbuttonColor = AppColor.Primary100;

      _ontextColor = AppColor.Neutral100;
      _jointextColor = AppColor.Neutral100;
      _ingtextColor = AppColor.Primary100;

      _onbackgroundColor = AppColor.White;
      _joinbackgroundColor = AppColor.Neutral5;
      _ingbackgroundColor = AppColor.White;
    });
  }

  void filtersearch(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBox(
            width: double.infinity,
            height: 610,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('필터 검색',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text('모집상태',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _onButtonClick();
                          },
                          child: Container(
                            width: 49,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _onbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _onbuttonColor)),
                            child: Center(
                              child: Text('전체',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _ontextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _joinButtonClick();
                          },
                          child: Container(
                            width: 60,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _joinbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _joinbuttonColor)),
                            child: Center(
                              child: Text('모집중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _jointextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _ingButtonClick();
                          },
                          child: Container(
                            width: 60,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _ingbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _ingbuttonColor)),
                            child: Center(
                              child: Text('진행중',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _ingtextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('진행방식',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _onButtonClick();
                          },
                          child: Container(
                            width: 49,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _onbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _onbuttonColor)),
                            child: Center(
                              child: Text('전체',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _ontextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _joinButtonClick();
                          },
                          child: Container(
                            width: 60,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _joinbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _joinbuttonColor)),
                            child: Center(
                              child: Text('온라인',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _jointextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _ingButtonClick();
                          },
                          child: Container(
                            width: 70,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _ingbackgroundColor,
                                border: Border.all(
                                    width: 1, color: _ingbuttonColor)),
                            child: Center(
                              child: Text('오프라인',
                                  style: TextStyle(
                                    color: _ingtextColor,
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('스터디 분야',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 312,
                      height: 36,
                      child: DropdownButton(
                        value: selectedStudy,
                        items: studyList.map((String item) {
                          return DropdownMenuItem<String>(
                            child: Text('$item'),
                            value: item,
                          );
                        }).toList(),
                        onChanged: (dynamic value) {
                          setState(() {
                            selectedStudy = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 76,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('UX/UI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 74,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('BX/BI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 64,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('GUI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 38,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('스터디 프로그램',
                        style: TextStyle(
                          color: AppColor.Neutral100,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownButton<String>(
                      value: selectedStudy,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedStudy = newValue!;
                        });
                      },
                      items: studyList.map((String program) {
                        return DropdownMenuItem<String>(
                          value: program,
                          child: Text(
                            program,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 77,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('Figma',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 103,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('photoshop',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 38,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: AppColor.Neutral10)),
                          child: Center(
                            child: Text('...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.Neutral10),
                            width: 102,
                            height: 48,
                            child: TextButton(
                              onPressed: () {
                                selectedStudy = studyList.first;
                              },
                              child: Text('초기화',
                                  style: TextStyle(
                                    color: Color(0xFF7F7F7F),
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                  )),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.Primary100),
                              width: 218,
                              height: 48,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  '적용하기',
                                  style: TextStyle(
                                    color: AppColor.White,
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        filtersearch(context);
      },
      child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColor.Neutral5)),
          child: SvgPicture.asset('assets/icons/Filter.svg')),
    );
  }
}
