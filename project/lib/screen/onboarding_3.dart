import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screen/Onboarding4.dart';
import 'package:get/get.dart';

class Onboarding_3 extends StatefulWidget {
  const Onboarding_3({super.key});

  @override
  ONboarding_3 createState() => ONboarding_3();
}

class ONboarding_3 extends State<Onboarding_3> {
  Map<String, Color> font_color = {};
  Map<String, Color> back_color = {};
  Map<String, Color> side_color = {};
  Map<String, Widget> click_slot = {};
  Map<String, String> slot_icon = {};
  Map<String, bool> click_state = {};
  Map<String, String> button_text = {
    'text_1': '개발',
    'text_2': '서비스기획',
    'text_3': 'UI/UX',
    'text_4': '영상/모션그래픽',
    'text_5': '마케팅',
    'text_6': '일러스트레이션',
    'text_7': '편집 디자인',
    'text_8': '제품 패키지',
    'text_9': '공예'
  };
  Map<String, Color> next_button = {
    'back': Color(0xFFE6E6E6),
    'text': Color(0xFF999999)
  };

  @override
  void initState() {
    super.initState();
    for (int i = 1; i < 10; i++) {
      font_color['font_$i'] = Color(0xFF000000);
      back_color['back_$i'] = Color(0xFFF3F3F3);
      side_color['side_$i'] = Color(0xFFF3F3F3);
      slot_icon['icon_$i'] = 'onboardion_icon_$i';
      click_state['slot_$i'] = false;
    }
  }

// 각 버튼 생성
  void Click_Slot() {
    for (int i = 1; i < 10; i++) {
      click_slot['slot_$i'] = Container(
        width: 104,
        height: 122,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 104,
              height: 104,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/onboarding_3/onboardion_icon_$i.png'),
                ),
                borderRadius: BorderRadius.circular(10),
                color: back_color['back_$i'],
                border: Border.all(
                    color: side_color['side_$i'] ?? Color(0xFFF3F3F3),
                    width: 1),
              ),
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      Slot_click('slot_$i');
                      Next_Activate();
                      if (click_state['slot_$i']!) {
                        back_color['back_$i'] = Color(0xFFF5F8FF);
                        side_color['side_$i'] = Color(0xFF0059FF);
                        font_color['font_$i'] = Color(0xFF0059FF);
                      } else if (!click_state['slot_$i']!) {
                        font_color['font_$i'] = Color(0xFF000000);
                        back_color['back_$i'] = Color(0xFFF3F3F3);
                        side_color['side_$i'] = Color(0xFFF3F3F3);
                      }
                    },
                  );
                },
              ),
            ),
            Container(
              height: 14,
              child: Text(
                button_text['text_$i'] ?? '오류인것',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: font_color['font_$i']),
              ),
            )
          ],
        ),
      );
    }
  }

  void Slot_click(String button_key) {
    int slot_activate =
        click_state.values.where((element) => element == true).length;
    if (click_state[button_key]!) {
      click_state[button_key] = false;
    } else if (!click_state[button_key]!) {
      if (slot_activate < 3) {
        click_state[button_key] = true;
      }
    }
  }

  void Next_Activate() {
    int slot_activate =
        click_state.values.where((element) => element == true).length;
    if (slot_activate != 0) {
      next_button['back'] = Color(0xFF0059FF);
      next_button['text'] = Color(0xFFFFFFFF);
    } else if (slot_activate == 0) {
      next_button['back'] = Color(0xFFE6E6E6);
      next_button['text'] = Color(0xFF999999);
    }
  }

  Widget build(BuildContext context) {
    Click_Slot();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                width: 360,
                height: 48,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                        size: 24,
                      ),
                      onPressed: () {
                        // Get.to(ONboarding_2());
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ONboarding_2()));
                      },
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            width: 296,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Color(0xFFE6E6E6),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 222,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Color(0xFF337AFF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '3 ',
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
                  '관심 있는 주제를 알려주세요!',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 16),
                height: 36,
                child: Text(
                  '관심 있는 주제를 최대 3개 선택해주세요\n딱 맞는 포트폴리오 추천에 적용됩니다',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF000000)),
                ),
              ),
              Container(
                width: 328,
                height: 410,
                margin: EdgeInsets.only(top: 32),
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 21,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.85,
                  padding: EdgeInsets.zero,
                  children: click_slot.values.toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 14,
                child: Text(
                  '나중에 변경할 수 있어요 편하게 입력해 주세요',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 12),
                ),
              ),
              Container(
                width: 328,
                height: 48,
                margin: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: next_button['back'],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    Get.to(Onboarding4());
                  },
                  child: Center(
                    child: Text(
                      '다음',
                      style:
                          TextStyle(color: next_button['text'], fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
