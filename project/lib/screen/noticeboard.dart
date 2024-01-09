import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team5/community/view/appbar/AppBar.dart';
import 'package:team5/community/view/tabbar/TabBar.dart';
import '../community/view/pagenumber/page_division.dart';
import '../database/data_controller.dart';
import '../screen/bottom_nagivation_bar.dart';
import '../screen/postpage.dart';
// import '../community/view/appbar/AppBar.dart';

class Notice_board extends StatefulWidget {
  const Notice_board({super.key});

  @override
  Notice_Board createState() => Notice_Board();
}

class Notice_Board extends State<Notice_board> {
  Data_Control data_control = Data_Control();
  Map<String, dynamic> docs = {};
  Map<String, dynamic> pop_docs = {};
  Map<String, Widget> pop_docs_panel = {};
  Map<String, Widget> docs_panel = {};
  Map<String, Widget> num_but = {};
  Map<int, Map<String, Widget>> division_panel = {};
  Map<String, Map<String, Widget>> sub_category = {};
  List<String> big_image_urls = [];
  List<String> small_image_urls = [];
  int increase_num = 0;
  int page_num = 1;
  bool page_load = false;
  Map<String, Color> num_active = {};
  String drop_down_initial = '최신순';
  Map<String, bool> drop_down_list = {'최신순': true, '저장순': false, '댓글순': false};
  Map<String, PopupMenuItem<String>> drop_down_item = {};
  late Widget bottom_sheet;
  Map<String, Widget> category_button = {};
  List<String> category_text = ['전체', '자유', '취업/이직', '수강후기', '포트폴리오 '];
  Map<String, bool> category_button_activate = {};

  final List<String> carouselItems = [
    'assets/images/community/noticeboard/banner_1.png',
    'assets/images/community/noticeboard/banner_2.png',
    'assets/images/community/noticeboard/banner_3.png',
    'assets/images/community/noticeboard/banner_4.png',
    'assets/images/community/noticeboard/banner_5.png',
    'assets/images/community/noticeboard/banner_6.png'
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    init_page();
  }

  void init_page() async {
    await get_data();
    bulid_post_panel();
    popup_items();
    for (String text in category_text) {
      category_button_activate[text] = false;
    }
    sheet_category();
    build_bottom_sheet();
    setState(() {
      page_load = true;
    });
  }

  Future<void> get_data() async {
    pop_docs = {};
    docs = await data_control.get_post('Notice');
    docs.forEach((key, value) {
      if (value['like'] >= 1) {
        pop_docs[key] = value;
      }
    });
    for (int i = 1; i < 6; i++) {
      String url_1 =
          await data_control.get_image('Notice/Profile_Big ($i).png');
      String url_2 =
          await data_control.get_image('Notice/Profile_Small ($i).png');
      big_image_urls.add(url_1);
      small_image_urls.add(url_2);
    }
  }

  void sub_cate_panel(String doc_id, List<dynamic> sub) {
    sub_category = {};
    sub_category[doc_id] = {};
    for (String id in sub) {
      sub_category[doc_id]![id] = Container(
        width: id.length * 6.0 + 16,
        height: 23,
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1,
            color: Color(0xFFF3F3F3),
          ),
        ),
        child: Center(
            child: Text(
          id,
          style: TextStyle(
            fontFamily: 'Pretendard',
            color: Color(0xFF666666),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        )),
      );
    }
  }

  void bulid_post_panel() {
    for (String pop_id in pop_docs.keys) {
      if (increase_num != 4) {
        increase_num++;
      } else {
        increase_num = 0;
      }
      sub_cate_panel(pop_id, pop_docs[pop_id]['sub_category']);
      pop_docs_panel[pop_id] = Container(
        width: 152,
        height: 168,
        margin: EdgeInsets.only(right: 12),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 12,
              child: Container(
                width: 152,
                height: 156,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 0.75, color: Color(0xFFE5EEFF)),
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 0,
              child: Container(
                width: 40,
                height: 40,
                child: Image.network(big_image_urls[increase_num]),
              ),
            ),
            Positioned(
              left: 12,
              top: 46,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 128,
                  height: 42,
                  margin: EdgeInsets.only(top: 8.0),
                  padding: EdgeInsets.zero,
                  child: Text(
                    pop_docs[pop_id]['title'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 94,
              child: Container(
                width: 128,
                height: 30,
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.zero,
                child: Text(
                  pop_docs[pop_id]['detail'],
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    color: Color(0xFF999999),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 132,
              child: Container(
                height: 23,
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.zero,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: sub_category[pop_id]!.values.toList()),
                ),
              ),
            ),
            Positioned(
              left: 90,
              top: 20,
              child: Container(
                width: pop_docs[pop_id]['main_category'].length * 6.0 + 16.0,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFE5EEFF),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    pop_docs[pop_id]['main_category'],
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      color: Color(0xFF0059FF),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    for (String doc_id in docs.keys) {
      if (increase_num != 4) {
        increase_num++;
      } else {
        increase_num = 0;
      }
      sub_cate_panel(doc_id, docs[doc_id]['sub_category']);
      docs_panel[doc_id] = GestureDetector(
        onTap: () {
          print('클릭');
          Get.to(() => Post_Page(docs[doc_id], docs, doc_id));
        },
        child: Container(
          width: 328,
          height: 116,
          margin: EdgeInsets.only(top: 12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: Color(0xFFF5F8FF),
            ),
          ),
          child: Container(
            width: 304,
            height: 92,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 304,
                  height: 20,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 8),
                        child: Image.network(
                          small_image_urls[increase_num],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        width: 80,
                        height: 20,
                        child: Text(
                          docs[doc_id]['writer'],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 144,
                      ),
                      Container(
                        width:
                            docs[doc_id]['main_category'].length * 6.0 + 16.0,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            color: Color(0xFFE5EEFF)),
                        child: Center(
                            child: Text(
                          docs[doc_id]['main_category'],
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            color: Color(0xFF0059FF),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 20,
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    docs[doc_id]['title'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 14,
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    docs[doc_id]['detail'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      color: Color(0xFF999999),
                      overflow: TextOverflow.ellipsis,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        height: 16,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: sub_category[doc_id]!.values.toList()),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        height: 14,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 12,
                              height: 14,
                              child: SvgPicture.asset(
                                'assets/icons/Eye.svg',
                                width: 10,
                                height: 14,
                              ),
                            ),
                            Text(
                              '${docs[doc_id]['views']}',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Color(0xFF4C4C4C),
                                fontSize: 10,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 14,
                              child: SvgPicture.asset(
                                'assets/icons/Bubble.svg',
                                width: 10,
                                height: 14,
                              ),
                            ),
                            Text(
                              '${docs[doc_id]['commentnum']}',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Color(0xFF4C4C4C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 14,
                              child: SvgPicture.asset(
                                'assets/icons/Heart.svg',
                                width: 10,
                                height: 14,
                              ),
                            ),
                            Text(
                              '${docs[doc_id]['like']}',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Color(0xFF4C4C4C),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  void popup_items() {
    for (String text in drop_down_list.keys.toList()) {
      drop_down_item[text] = PopupMenuItem<String>(
        value: text,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Pretendard',
              color: Color(0xFF020202),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ),
      );
    }
  }

  void category_color_change(String input_text) {
    setState(() {
      category_button_activate.forEach((key, value) {
        category_button_activate[key] = false;
      });
      category_button_activate[input_text] = true;
      print(category_button_activate);
    });
  }

  void sheet_category() {
    for (String text in category_text) {
      category_button[text] = GestureDetector(
        onTap: () {
          print('클릭');
          category_color_change(text);
        },
        child: Container(
          width: text.length * 12.0 + 16,
          height: 36,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: category_button_activate[text]!
                ? Color(0xFFF5F8FF)
                : Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              width: 1,
              color: category_button_activate[text]!
                  ? Color(0xFF0059FF)
                  : Color(0xFFE6E6E6),
            ),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Pretendard',
              color: category_button_activate[text]!
                  ? Color(0xFF0059FF)
                  : Color(0xFF000000),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          )),
        ),
      );
    }
  }

  void build_bottom_sheet() {
    bottom_sheet = GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              width: 360,
              height: 345,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 38,
                    height: 4,
                    margin: EdgeInsets.only(top: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFFE6E6E6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  Container(
                    width: 336,
                    height: 153,
                    margin: EdgeInsets.only(top: 10, left: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 266,
                          height: 24,
                          child: Text(
                            '필터 검색',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 266,
                          height: 21,
                          child: Text(
                            '태그',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                            width: 266,
                            height: 80,
                            child: Column(
                              children: [
                                Row(
                                  children: category_button.values
                                      .toList()
                                      .sublist(0, 4),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: category_button.values
                                      .toList()
                                      .sublist(4, 5),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: 328,
                    height: 48,
                    margin: EdgeInsets.only(
                        top: 40, left: 16, right: 16, bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 102,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFFE6E6E6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              '초기화',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Color(0xFF7F7F7F),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 218,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Color(0xFF0059FF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              '적용하기',
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BottomNavigationBarComponent(),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFFF3F3F3), width: 1)),
        child: SvgPicture.asset(
          'assets/icons/Filter.svg',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return
        // DefaultTabController(
        //   length: 4,
        //   child:
        Scaffold(
      body: page_load
          ? Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    height: 48,
                    width: 360,
                    child: CustomAppBarWidget(),
                  ),
                  Container(
                    width: 360,
                    height: 40,
                    child: CustomTabBar(),
                  ),
                  Container(
                    color: Colors.white,
                    width: 360,
                    height: 564,
                    child: Stack(
                      children: [
                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  child: Stack(
                                    children: [
                                      CarouselSlider(
                                        items: carouselItems
                                            .map((image) => Image.asset(image))
                                            .toList(),
                                        options: CarouselOptions(
                                          height: 200,
                                          autoPlay: true,
                                          viewportFraction: 1,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 4),
                                        alignment: Alignment.bottomCenter,
                                        child: DotsIndicator(
                                          dotsCount: carouselItems.length,
                                          position: currentIndex,
                                          decorator: const DotsDecorator(
                                              size: Size.square(4),
                                              activeSize: Size.square(4),
                                              activeColor: Colors.white,
                                              spacing: EdgeInsets.all(2)),
                                        ),
                                      )
                                    ],
                                  ),
                                ), // 배너 클래스
                                Container(
                                  margin: EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '인기 게시글',
                                            style: TextStyle(
                                                fontFamily: 'Pretendard',
                                                color: Color(0xFF000000),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 4),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            child: Image.asset(
                                              'assets/images/fire.png',
                                              fit: BoxFit.fill,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 168,
                                        width: 316,
                                        margin: EdgeInsets.only(top: 14),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children:
                                                pop_docs_panel.values.toList(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        height: 40,
                                        margin: EdgeInsets.only(top: 40),
                                        child: Text(
                                          '실시간 게시글',
                                          style: TextStyle(
                                              fontFamily: 'Pretendard',
                                              color: Color(0xFF000000),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: 328,
                                        height: 38,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            bottom_sheet,
                                            PopupMenuButton<String>(
                                              onSelected: (value) {
                                                setState(() {
                                                  drop_down_initial = value;
                                                });
                                                drop_down_list
                                                    .forEach((key, value) {
                                                  drop_down_list[key] = false;
                                                });
                                                drop_down_list[value] = true;
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return drop_down_item.values
                                                    .toList();
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              elevation: 5,
                                              child: Container(
                                                height: 38,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Color(0xFFF3F3F3),
                                                      width: 1),
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        drop_down_initial,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Pretendard',
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            left: 4),
                                                        child: SvgPicture.asset(
                                                          'assets/icons/Dropdown.svg',
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Page_Division(docs_panel),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 14,
                          right: 16,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF0059FF),
                              ),
                              child: Center(
                                child: Container(
                                  width: 15,
                                  height: 17,
                                  child: SvgPicture.asset(
                                    'assets/icons/Pencil.svg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: BottomNavigationBarComponent(),
                  ),
                ],
              ),
            )
          : Container(),
      // ),
    );
  }
}
