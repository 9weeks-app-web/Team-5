import 'package:flutter/material.dart';

import '../community/view/projectscreen/mainscreen.dart';

import '../screen/StudyPage.dart';
import '../screen/noticeboard.dart';
import '/screen/notice_employment.dart';

const homeIcon = 'assets/icons/Home.svg';
const communityIcon = 'assets/icons/Community.svg';
const portfolioIcon = 'assets/icons/Portfolio.svg';
const collectionIcon = 'assets/icons/Collection.svg';
const mypageIcon = 'assets/icons/Mypage.svg';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            const Center(child: Notice_board()),
            const Center(child: Mainscreen()),
            const Center(child: StudyPage()),
            Center(child: NoticeOfEmployment(),
            ),
          ],
        ),
      ),
    );
  }
}
