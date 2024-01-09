import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../database/data_controller.dart';
import '../screen/bottom_nagivation_bar.dart';

class Post_Page extends StatefulWidget {
  final Map<String, dynamic> docs;
  final Map<String, dynamic> docs_list;
  final String docs_name;
  const Post_Page(this.docs, this.docs_list, this.docs_name);

  Post_page createState() => Post_page();
}

class Post_page extends State<Post_Page> {
  Map<String, Widget> sub_category = {};
  Map<String, Widget> comment_panel = {};
  Data_Control data_control = Data_Control();
  List<String> image_slot = [];
  bool page_load = false;
  bool lock_svg = false;
  String heart = 'assets/icons/Empty_heart.svg';

  @override
  void initState() {
    super.initState();
    init_page();
  }

  void init_page() async {
    await image_load();
    await createCommentPanel();
    sub_panel();
    setState(() {
      page_load = true;
    });
  }

  Future<void> image_load() async {
    Random rannum = Random();
    String imageurl = await data_control
        .get_image('Notice/Profile_Big (${rannum.nextInt(5) + 1}).png');
    image_slot.add(imageurl);
  }

  void sub_panel() {
    for (String text in widget.docs['sub_category']) {
      sub_category[text] = Container(
        width: 40,
        height: 16,
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: Color(0xFFF3F3F3),
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Color(0xFF666666),
            fontSize: 8,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.01,
          ),
        )),
      );
    }
  }

  Future<void> createCommentPanel() async {
    Map<String, dynamic> commentList = widget.docs['comment'];
    List<String> commentNumber = commentList.keys.toList()..sort();
    Random random = Random();

    for (String id in commentNumber) {
      int image_num = random.nextInt(5) + 1;
      String image_url = await data_control
          .get_image('Notice/Profile_Small (${image_num}).png');
      Map<String, dynamic> thiscomment = commentList[id];
      comment_panel[id] = Row(
        children: [
          Container(
            width: 304,
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                id.contains('_')
                    ? Container(
                        margin: EdgeInsets.only(right: 12),
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          'assets/icons/Reply.svg',
                          width: 10,
                          height: 12,
                        ),
                      )
                    : Container(),
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(image_url),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          thiscomment.keys.first,
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        thiscomment.keys.first == widget.docs['writer']
                            ? Container(
                                margin: EdgeInsets.only(left: 4),
                                child: Text(
                                  '작성자',
                                  style: TextStyle(
                                    color: Color(0xFF0059FF),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : Container(),
                        SizedBox(
                          width: 12,
                        )
                      ]),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    thiscomment.values.first,
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 14,
            height: 20,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/Dot.svg',
                width: 14,
                height: 8,
              ),
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int docu_num = widget.docs_list.keys.toList().indexOf(widget.docs_name);
    String previous_page = '';
    String next_page = '';
    if (docu_num != 0) {
      previous_page = widget.docs_list.keys.toList()[docu_num - 1];
    }
    if (docu_num != widget.docs_list.keys.toList().length - 1) {
      next_page = widget.docs_list.keys.toList()[docu_num + 1];
    }
    return Scaffold(
      body: page_load
          ? Container(
              margin: EdgeInsets.only(top: 28),
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 332,
                      height: 33,
                      margin: const EdgeInsets.only(top: 12, bottom: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/icons/Back.svg',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (heart.contains('Empty')) {
                                      heart = 'assets/icons/Blue_heart.svg';
                                    } else {
                                      heart = 'assets/icons/Empty_heart.svg';
                                    }
                                  });
                                },
                                child: Container(
                                  width: 16,
                                  height: 15,
                                  child: SvgPicture.asset(heart),
                                ),
                              ),
                              Text(
                                heart.contains('Empty')
                                    ? '${widget.docs['like']}'
                                    : '${widget.docs['like'] + 1}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 0.15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 360,
                      height: 600,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.only(left: 8, right: 8),
                                      width:
                                          widget.docs['main_category'].length *
                                                  10.0 +
                                              16,
                                      height: 19,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFE5EEFF),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          widget.docs['main_category'],
                                          style: const TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Color(0xFF0059FF),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          // maxLines: 1,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        widget.docs['title'],
                                        style: const TextStyle(
                                          fontFamily: 'PretendardVariable',
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                          children:
                                              sub_category.values.toList()),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 360,
                                      height: 20,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            image_slot[0],
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            widget.docs['writer'],
                                            style: const TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Color(0xFF666666),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 328,
                                      height: 14,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            widget.docs['date']
                                                .toString()
                                                .substring(2),
                                            style: const TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Container(
                                            height: 14,
                                            width: 80,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
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
                                                  Container(
                                                    padding:
                                                        EdgeInsets.only(top: 1),
                                                    child: Text(
                                                      '${widget.docs['views']}',
                                                      style: const TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            Color(0xFF020202),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
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
                                                  Container(
                                                    padding:
                                                        EdgeInsets.only(top: 1),
                                                    child: Text(
                                                      '${widget.docs['commentnum']}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color:
                                                            Color(0xFF020202),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    Container(
                                      width: 328,
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xFFF3F3F3),
                                              width: 1),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: 328,
                                      height: 301,
                                      child: Text(
                                        widget.docs['detail'],
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Color(0xFF020202),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 328,
                                      margin: EdgeInsets.only(bottom: 16),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xFFF3F3F3),
                                              width: 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 328,
                                      height: 25,
                                      child: Row(
                                        children: [
                                          const Text(
                                            '댓글',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              '${widget.docs['commentnum']}',
                                              style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Container(
                                      width: 328,
                                      height: 32,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 288,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Color(0xFFF8F8F9),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    '                                      댓글을 입력하세요',
                                                hintStyle: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: Color(0xFF999999),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 13.0),
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      lock_svg = !lock_svg;
                                                    });
                                                  },
                                                  child: SvgPicture.asset(
                                                    lock_svg
                                                        ? 'assets/icons/Lock_blue.svg'
                                                        : 'assets/icons/Lock_gray.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Color(0xFF0059FF),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                'assets/icons/Send.svg',
                                                width: 13,
                                                height: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Column(
                                      children: comment_panel.values.toList(),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            docu_num != 0
                                ? GestureDetector(
                                    onTap: () {
                                      Get.back();
                                      Get.to(() => Post_Page(
                                          widget.docs_list[previous_page],
                                          widget.docs_list,
                                          previous_page));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      height: 36,
                                      width: 360,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF5F8FF)),
                                      child: Container(
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 25,
                                                height: 20,
                                                child: Text(
                                                  '이전',
                                                  style: TextStyle(
                                                    color: Color(0xFF666666),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Container(
                                                width: 291,
                                                height: 20,
                                                child: Text(
                                                  widget.docs_list[
                                                      previous_page]['title'],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              height: 1,
                            ),
                            docu_num !=
                                    widget.docs_list.keys.toList().length - 1
                                ? GestureDetector(
                                    onTap: () {
                                      Get.back();
                                      Get.to(() => Post_Page(
                                          widget.docs_list[next_page],
                                          widget.docs_list,
                                          next_page));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      width: 360,
                                      height: 36,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF5F8FF)),
                                      child: Container(
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 25,
                                                height: 20,
                                                child: Text(
                                                  '다음',
                                                  style: TextStyle(
                                                    color: Color(0xFF666666),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Container(
                                                width: 291,
                                                height: 20,
                                                child: Text(
                                                  widget.docs_list[next_page]
                                                      ['title'],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 64,
                      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                      child: BottomNavigationBarComponent(),
                    ),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
