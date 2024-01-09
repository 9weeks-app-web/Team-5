
import 'package:flutter/material.dart';
import '../screen/onboarding_3.dart';
import '../utill/color.dart';

class SecondOnboringPage extends StatefulWidget {
  const SecondOnboringPage({super.key});

  @override
  State<SecondOnboringPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SecondOnboringPage> {
  //직업 선택
  Color _studentButtonColor = AppColor.Neutral5;
  Color _prepareButtonColor = AppColor.Neutral5;
  Color _workerButtonColor = AppColor.Neutral5;
  Color _freeButtonColor = AppColor.Neutral5;

  Color _studentTextColor = AppColor.Neutral40;
  Color _prepareTextColor = AppColor.Neutral40;
  Color _workerTextColor = AppColor.Neutral40;
  Color _freeTextColor = AppColor.Neutral40;

  void _onstudentButtonClicked() {
    setState(() {
      _studentButtonColor = AppColor.Primary100;
      _prepareButtonColor = AppColor.Neutral5;
      _workerButtonColor = AppColor.Neutral5;
      _freeButtonColor = AppColor.Neutral5;

      _studentTextColor = AppColor.Primary100;
      _prepareTextColor = AppColor.Neutral40;
      _workerTextColor = AppColor.Neutral40;
      _freeTextColor = AppColor.Neutral40;
    });
  }

  void _onprepareButtonClicked() {
    setState(() {
      _studentButtonColor = AppColor.Neutral5;
      _prepareButtonColor = AppColor.Primary100;
      _workerButtonColor = AppColor.Neutral5;
      _freeButtonColor = AppColor.Neutral5;

      _studentTextColor = AppColor.Neutral40;
      _prepareTextColor = AppColor.Primary100;
      _workerTextColor = AppColor.Neutral40;
      _freeTextColor = AppColor.Neutral40;
    });
  }

  void _onworkerButtonClicked() {
    setState(() {
      _studentButtonColor = AppColor.Neutral5;
      _prepareButtonColor = AppColor.Neutral5;
      _workerButtonColor = AppColor.Primary100;
      _freeButtonColor = AppColor.Neutral5;

      _studentTextColor = AppColor.Neutral40;
      _prepareTextColor = AppColor.Neutral40;
      _workerTextColor = AppColor.Primary100;
      _freeTextColor = AppColor.Neutral40;
    });
  }

  void _onfreeButtonClicked() {
    setState(() {
      _studentButtonColor = AppColor.Neutral5;
      _prepareButtonColor = AppColor.Neutral5;
      _workerButtonColor = AppColor.Neutral5;
      _freeButtonColor = AppColor.Primary100;

      _studentTextColor = AppColor.Neutral40;
      _prepareTextColor = AppColor.Neutral40;
      _workerTextColor = AppColor.Neutral40;
      _freeTextColor = AppColor.Primary100;
    });
  }

  //경력 선택
  Color _newButtonColor = AppColor.Neutral5;
  Color _threeButtonColor = AppColor.Neutral5;
  Color _sevenButtonColor = AppColor.Neutral5;
  Color _tenButtonColor = AppColor.Neutral5;

  Color _newTextColor = AppColor.Neutral40;
  Color _threeTextColor = AppColor.Neutral40;
  Color _sevenTextColor = AppColor.Neutral40;
  Color _tenTextColor = AppColor.Neutral40;

  void _onNewButtonClicked() {
    setState(() {
      _newButtonColor = AppColor.Primary100;
      _threeButtonColor = AppColor.Neutral5;
      _sevenButtonColor = AppColor.Neutral5;
      _tenButtonColor = AppColor.Neutral5;

      _newTextColor = AppColor.Primary100;
      _threeTextColor = AppColor.Neutral40;
      _sevenTextColor = AppColor.Neutral40;
      _tenTextColor = AppColor.Neutral40;
    });
  }

  void _ontreeButtonClicked() {
    setState(() {
      _newButtonColor = AppColor.Neutral5;
      _threeButtonColor = AppColor.Primary100;
      _sevenButtonColor = AppColor.Neutral5;
      _tenButtonColor = AppColor.Neutral5;

      _newTextColor = AppColor.Neutral40;
      _threeTextColor = AppColor.Primary100;
      _sevenTextColor = AppColor.Neutral40;
      _tenTextColor = AppColor.Neutral40;
    });
  }

  void _onsevenButtonClicked() {
    setState(() {
      _newButtonColor = AppColor.Neutral5;
      _threeButtonColor = AppColor.Neutral5;
      _sevenButtonColor = AppColor.Primary100;
      _tenButtonColor = AppColor.Neutral5;

      _newTextColor = AppColor.Neutral40;
      _threeTextColor = AppColor.Neutral40;
      _sevenTextColor = AppColor.Primary100;
      _tenTextColor = AppColor.Neutral40;
    });
  }

  void _ontenButtonClicked() {
    setState(() {
      _newButtonColor = AppColor.Neutral5;
      _threeButtonColor = AppColor.Neutral5;
      _sevenButtonColor = AppColor.Neutral5;
      _tenButtonColor = AppColor.Primary100;

      _newTextColor = AppColor.Neutral40;
      _threeTextColor = AppColor.Neutral40;
      _sevenTextColor = AppColor.Neutral40;
      _tenTextColor = AppColor.Primary100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_before),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Stack(
                  children: [
                    Container(
                      width: 296,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.Neutral10),
                    ),
                    Container(
                      width: 148,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.Primary100),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '2 ',
                        style: TextStyle(
                          color: Color(0xFF020202),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '/4 ',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '현재의 상태를 알려주세요',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.Neutral100),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      '00님의 마음을 저격할 포트폴리오를 추천해드릴게요',
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 12,
                          color: AppColor.Neutral80),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: _studentButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: _onstudentButtonClicked,
                                  child: Text(
                                    '학생',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _studentTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _prepareButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: _onprepareButtonClicked,
                                  child: Text(
                                    '취업준비생',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _prepareTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                width: 160,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: _workerButtonColor, width: 1),
                                ),
                                child: OutlinedButton(
                                  onPressed: _onworkerButtonClicked,
                                  child: Text(
                                    '직장인',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _workerTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _freeButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: _onfreeButtonClicked,
                                  child: Text(
                                    '프리랜서',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _freeTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            children: [
                              Text(
                                '경력',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _newButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: () {
                                    _onNewButtonClicked();
                                  },
                                  child: Text(
                                    '0~2년',
                                    style: TextStyle(
                                        fontSize: 16, color: _newTextColor),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _threeButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: () {
                                    _ontreeButtonClicked();
                                  },
                                  child: Text(
                                    '3~6년',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _threeTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _sevenButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: () {
                                    _onsevenButtonClicked();
                                  },
                                  child: Text(
                                    '7~10년',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _sevenTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: _tenButtonColor, width: 1),
                                ),
                                width: 160,
                                height: 48,
                                child: OutlinedButton(
                                  onPressed: () {
                                    _ontenButtonClicked();
                                  },
                                  child: Text(
                                    '10년차 이상',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: _tenTextColor,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      backgroundColor: AppColor.Neutral5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 180,
                    ),
                    Text(
                      '나중에 변경할 수 있어요. 편하게 입력해주세요.',
                      style: TextStyle(
                          fontFamily: 'Pretendard', color: AppColor.Neutral60),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(50),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            elevation: 0,
                            backgroundColor: AppColor.Primary100),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Onboarding_3()),
                          );
                        },
                        child: Text(
                          '다음',
                          style: TextStyle(
                              color: AppColor.White,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
