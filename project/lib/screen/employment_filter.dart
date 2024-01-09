import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../screen/bottom_nagivation_bar.dart';
import '../Widget/slider.dart';
import '../screen/filter_button.dart';
import '../utill/color.dart';

class EmploymentFilter extends StatefulWidget {
  const EmploymentFilter({super.key});

  @override
  State<EmploymentFilter> createState() => _EmploymentFilterState();
}

class _EmploymentFilterState extends State<EmploymentFilter> {
  final _skillController = TextEditingController();
  final _locationController = TextEditingController();
  String majorValue = '대분류';
  String subValue = '상세분류';
  List<String> _majorCategory = [
    '전체',
    '기획/전략',
    '디자인',
    '개발/데이터',
    '경영/회계/세무',
    '마케팅/광고/MD',
    '인사/HR',
    '영업/서비스',
    '금융',
    '법무/사무/총무',
    '제조',
    '제약',
    '기타'
  ];
  List<String> _subCategory = [
    '전체',
    'UX 디자이너',
    '패션 디자이너',
    'BI/BX 디자이너',
    '패키지 디자이너',
    '그래픽 디자이너',
    '아트 디자이너',
    '콘텐츠 디자이너',
    '산업 디자이너',
    '일러스트레이터',
    '인테리어 디자이너',
    '편집 디자이너',
    'UI, GUI 디자이너',
    '3D 디자이너',
    '공간 디자이너'
  ];

  final List<String> _educationCategory = [
    '전체',
    '학력무관',
    '고등학교 졸업',
    '대학교 졸업(2,3년)',
    '대학교 졸업(4년)',
    '대학원 석사 졸업',
    '대학원 박사 졸업',
  ];
  final List<String> _companyCategory = [
    '전체',
    '스타트업',
    '중견/중소',
    '대기업',
    '공기업/공사',
    '외국계'
  ];
  final List<String> _typeCategory = [
    '전체',
    '인턴',
    '계약직',
    '정규직',
    '프리랜서',
    '아르바이트',
    '연수생/교육생'
  ];
  late List<bool> _educationSelections;
  late List<bool> _companySelections;
  late List<bool> _typeSelections;

  List<String> _skillTexts = [];
  List<String> _locationTexts = [];

  Widget _buildText(String text) {
    return IntrinsicWidth(
      child: Container(
        height: 36,
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 9,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: AppColor.Neutral10,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 18,
              child: Text(text),
            ),
            Container(
              width: 12,
              height: 12,
              margin: EdgeInsets.only(
                left: 4,
              ),
              child: IconButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                icon: SvgPicture.asset(
                  'assets/icons/filter/delete.svg',
                ),
                onPressed: () {
                  setState(() {
                    _skillTexts.remove(text);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _educationSelections =
        List.generate(_educationCategory.length, (index) => false);
    _companySelections =
        List.generate(_companyCategory.length, (index) => false);
    _typeSelections = List.generate(_typeCategory.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'Pretendard',
        color: Colors.black,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 564,
                decoration: ShapeDecoration(
                  color: AppColor.White,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                child: Container(
                  height: 516,
                  padding: EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          child: Text(
                            '필터 검색',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          child: Text(
                            '모집 분야',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 9, horizontal: 16),
                          decoration: BoxDecoration(
                            color: AppColor.Background5,
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: AppColor.Neutral10, width: 1),
                          ),
                          height: 36,
                          width: 312,
                          child: PopupMenuButton(
                            constraints: BoxConstraints(maxWidth: 312),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            offset: Offset(16, 26),
                            color: Colors.white,
                            padding: EdgeInsets.zero,
                            elevation: 0.3,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    majorValue,
                                    style: TextStyle(
                                        color: AppColor.Neutral40,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 0.8),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: SvgPicture.asset(
                                      'assets/icons/filter/dropdown.svg'),
                                ),
                              ],
                            ),
                            onSelected: (value) {
                              setState(() {
                                majorValue = value;
                              });
                            },
                            itemBuilder: (BuildContext context) =>
                                _majorCategory.map((String value) {
                              return PopupMenuItem(
                                value: value,
                                child: Container(
                                  width: 312,
                                  height: 18,
                                  padding: EdgeInsets.only(left: 8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 9, horizontal: 16),
                          decoration: BoxDecoration(
                            color: AppColor.Background5,
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: AppColor.Neutral10, width: 1),
                          ),
                          height: 36,
                          width: 312,
                          child: PopupMenuButton(
                            constraints: BoxConstraints(maxWidth: 312),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            offset: Offset(16, 26),
                            color: Colors.white,
                            padding: EdgeInsets.zero,
                            elevation: 0.3,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    subValue,
                                    style: TextStyle(
                                        color: AppColor.Neutral40,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 0.8),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: SvgPicture.asset(
                                      'assets/icons/filter/dropdown.svg'),
                                ),
                              ],
                            ),
                            onSelected: (value) {
                              setState(() {
                                subValue = value;
                              });
                            },
                            itemBuilder: (BuildContext context) =>
                                _subCategory.map((String value) {
                              return PopupMenuItem(
                                value: value,
                                child: Container(
                                  width: 312,
                                  height: 18,
                                  padding: EdgeInsets.only(left: 8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          child: Text(
                            '학력',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        // selection
                        Container(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List.generate(
                              _educationCategory.length,
                              (index) {
                                return SelectableContainer(
                                  text: _educationCategory[index],
                                  selected: _educationSelections[index],
                                  onTap: () {
                                    setState(() {
                                      if (index == 0) {
                                        _educationSelections =
                                            List.generate(15, (index) => false);
                                        _educationSelections[0] =
                                            !_educationSelections[0];
                                      } else {
                                        _educationSelections[0] = false;
                                        _educationSelections[index] =
                                            !_educationSelections[index];
                                      }
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 21,
                          child: Text(
                            '기업 형태',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List.generate(
                              _companyCategory.length,
                              (index) {
                                return SelectableContainer(
                                  text: _companyCategory[index],
                                  selected: _companySelections[index],
                                  onTap: () {
                                    setState(() {
                                      if (index == 0) {
                                        _companySelections =
                                            List.generate(15, (index) => false);
                                        _companySelections[0] =
                                            !_companySelections[0];
                                      } else {
                                        _companySelections[0] = false;
                                        _companySelections[index] =
                                            !_companySelections[index];
                                      }
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 21,
                          child: Text(
                            '고용 형태',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List.generate(
                              _typeCategory.length,
                              (index) {
                                return SelectableContainer(
                                  text: _typeCategory[index],
                                  selected: _typeSelections[index],
                                  onTap: () {
                                    setState(() {
                                      if (index == 0) {
                                        _typeSelections =
                                            List.generate(15, (index) => false);
                                        _typeSelections[0] =
                                            !_typeSelections[0];
                                      } else {
                                        _typeSelections[0] = false;
                                        _typeSelections[index] =
                                            !_typeSelections[index];
                                      }
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 21,
                          child: Text(
                            '경력',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FilterCareerSlider(),
                        Container(
                          height: 21,
                          child: Text(
                            '지역',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 36,
                          margin: EdgeInsets.symmetric(vertical: 12),
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 12,
                            top: 8,
                            bottom: 8,
                          ),
                          decoration: ShapeDecoration(
                            color: AppColor.Background5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: AppColor.Neutral10),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 262,
                                child: TextFormField(
                                  controller: _locationController,
                                  cursorColor: AppColor.Neutral40,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: '검색어를 입력해주세요.',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Pretendard',
                                      color: AppColor.Neutral40,
                                      // height: 0.8,
                                    ),
                                  ),
                                  onFieldSubmitted: (text) {
                                    setState(() {
                                      _locationTexts.add(text);
                                      _locationController.clear();
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    if (_locationController.text.isNotEmpty) {
                                      final text = _locationController.text;
                                      setState(() {
                                        _locationTexts.add(text);
                                        _locationController.clear();
                                        FocusScope.of(context).unfocus();
                                      });
                                    }
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/filter/search.svg',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Wrap(
                            runSpacing: 8,
                            spacing: 8,
                            children: []
                              ..addAll(_locationTexts.map(_buildText)),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 21,
                          child: Text(
                            '스킬',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 36,
                          margin: EdgeInsets.symmetric(vertical: 12),
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 12,
                            top: 8,
                            bottom: 8,
                          ),
                          decoration: ShapeDecoration(
                            color: AppColor.Background5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: AppColor.Neutral10),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 262,
                                child: TextFormField(
                                  controller: _skillController,
                                  cursorColor: AppColor.Neutral40,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: '검색어를 입력해주세요.',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Pretendard',
                                      color: AppColor.Neutral40,
                                      // height: 0.8,
                                    ),
                                  ),
                                  onFieldSubmitted: (text) {
                                    setState(() {
                                      _skillTexts.add(text);
                                      _skillController.clear();
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    if (_skillController.text.isNotEmpty) {
                                      final text = _skillController.text;
                                      setState(() {
                                        _skillTexts.add(text);
                                        _skillController.clear();
                                        FocusScope.of(context).unfocus();
                                      });
                                    }
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/filter/search.svg',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Wrap(
                            runSpacing: 8,
                            spacing: 8,
                            children: []..addAll(_skillTexts.map(_buildText)),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Container(
                          // height: 60,
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _educationSelections = List.generate(
                                        _educationCategory.length,
                                        (index) => false);
                                    _companySelections = List.generate(
                                        _companyCategory.length,
                                        (index) => false);
                                    _typeSelections = List.generate(
                                        _typeCategory.length, (index) => false);
                                    _locationTexts.clear();
                                    _skillTexts.clear();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.Neutral10,
                                  minimumSize: Size(102, 48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  '초기화',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    color: AppColor.Neutral50,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.Primary100,
                                  minimumSize: Size(202, 48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  '적용하기',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
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
              ),
              // 손잡이
              Positioned(
                top: 10,
                left: 161,
                child: Container(
                  width: 38,
                  height: 4,
                  decoration: ShapeDecoration(
                    color: AppColor.Neutral10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              )
            ],
          ),
          BottomNavigationBarComponent(),
        ],
      ),
    );
  }
}
