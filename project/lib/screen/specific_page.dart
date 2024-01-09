import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import '/screen/google_map.dart';
import '/screen/bottom_nagivation_bar.dart';
import '/screen/employment_dummy_data.dart';

class SpecificPage extends StatelessWidget {
  final int index;
  final ClickController clickController = Get.find();
  SpecificPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pageData = dummyData[index];
    String bulletAddedJobDescription =
        addBulletPoints(pageData['jobdescription']);
    String bulletAddedBenefit = addBulletPoints(pageData['benefit']);
    String bulletAddedRequirement = addBulletPoints(pageData['requirement']);
    String bulletAddedPreferred = addBulletPoints(pageData['preferred']);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 앱바를 투명하게 만듭니다.
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/Back_button.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GetBuilder<BookmarkController>(
            builder: (controller) => IconButton(
              icon: Container(
                height: 31,
                width: 14,
                child: Column(
                  children: [
                    Container(
                      height: 16,
                      width: 12,
                      padding: EdgeInsets.all(1),
                      child: controller.bookmarked[index]
                          ? SvgPicture.asset('assets/icons/Bookmark_filled.svg')
                          : SvgPicture.asset('assets/icons/Bookmark.svg'),
                    ),
                    Text(
                      Get.find<BookmarkController>()
                          .bookmarkCounter[index]
                          .toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Pretendard',
                        color: Colors.white,
                      ),
                    ), // TODO: 진짜 동작하게 하고 싶으면 뷰카운터처럼 해주면 됨
                  ],
                ),
              ),
              onPressed: () {
                Get.find<BookmarkController>().toggleBookmark(index);
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xffffffff),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontFamily: 'Pretendard',
            color: Colors.black,
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      child: Image.asset(pageData['image']),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Container(
                            height: 113,
                            padding: EdgeInsets.zero,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xfff3f3f3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicWidth(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 19,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        alignment: Alignment.centerLeft,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFE5EEFF),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Text(
                                          pageData['tag'],
                                          style: const TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff0059ff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 17,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    pageData['title'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      height: 0.85,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 18,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff999999),
                                        height: 0.7),
                                    child: Row(
                                      children: [
                                        Text(
                                          pageData['company'],
                                        ),
                                        const Text('•'),
                                        Text(pageData['location']),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 15,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Pretendard',
                                        color: Colors.black),
                                    child: SizedBox(
                                      height: 12,
                                      child: Text(
                                        pageData['date'],
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 24,
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              '상세내용',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_JD.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '주요 업무',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 23,
                              right: 20,
                            ),
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 8, right: 0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              bulletAddedJobDescription,
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_rq.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '자격 요건',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 23,
                              right: 24,
                            ),
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 8, right: 0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              bulletAddedRequirement,
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_pref.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '우대 사항',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 23,
                              right: 24,
                            ),
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 8, right: 0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              bulletAddedPreferred,
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_benefit.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '혜택 및 복지',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 23,
                              right: 20,
                            ),
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 8, right: 0),
                            alignment: Alignment.topLeft,
                            child: Text(
                              bulletAddedBenefit,
                              style: const TextStyle(
                                color: Color(0xff666666),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_date.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '접수기간',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFF3F3F3)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '2024.01.01(월)',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const SizedBox(
                                  width: 8,
                                  child: Text(
                                    '~',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFF3F3F3)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '모집 완료시 까지',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_contact.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '연락처',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFF3F3F3)),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '010 - 9753 - 7531',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFF3F3F3)),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Acompany@company.com',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFF3F3F3)),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '@Acompany9753',
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_skill.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '스킬',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 17.5),
                            child: Wrap(
                              spacing: 8,
                              runSpacing: 4,
                              children: [
                                createContainer('인터랙션 디자인'),
                                createContainer('서비스 디자인'),
                                createContainer('웹 디자인'),
                                createContainer('그래픽 디자인'),
                                createContainer('UX 디자인'),
                                createContainer('UI 디자인'),
                                createContainer('Figma'),
                                createContainer('Protopie'),
                                createContainer('Sketch'),
                                createContainer('Zeplin'),
                                createContainer('Photoshop'),
                                createContainer('Illustrator'),
                                createContainer('XD'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 180,
                          ),
                          Container(
                            height: 16,
                            child: Row(
                              children: [
                                Image.asset(
                                    'assets/images/noticeofemployment/Icon_map.png'),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  '근무지역',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 24,
                              bottom: 8,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              pageData['map'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            width: 328,
                            height: 124,
                            // child: GoogleMapComponent(address: pageData['map']),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 124,
                                  width: 328,
                                  child: Image.asset(
                                    'assets/images/noticeofemployment/Map.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Center(
                                    child: Image.asset(
                                        'assets/images/noticeofemployment/Icon_onMap.png')),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: FittedBox(
                                child: Text(
                                  '지원하기',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                  ),
                                ),
                                fit: BoxFit.scaleDown,
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff0059ff)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Color(0xff0059ff)),
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(328, 48)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarComponent(),
    );
  }

  String addBulletPoints(String text) {
    List<String> lines = text.split('\n');
    List<String> bulletAddedLines = lines.map((line) => '• $line').toList();
    return bulletAddedLines.join('\n');
  }

  Widget createContainer(String text) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xFF666666), fontSize: 14, height: 1.4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF3F3F3)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
