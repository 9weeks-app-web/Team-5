import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team5/screen/shortpec.dart';

import 'community_screen.dart';

const homeIcon = 'assets/icons/Home.svg';
const communityIcon = 'assets/icons/Community.svg';
const portfolioIcon = 'assets/icons/Portfolio.svg';
const collectionIcon = 'assets/icons/Collection.svg';
const mypageIcon = 'assets/icons/Mypage.svg';

class BottomNavigationBarComponent extends StatefulWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  State<BottomNavigationBarComponent> createState() =>
      _BottomNavigationBarComponentState();
}

class _BottomNavigationBarComponentState
    extends State<BottomNavigationBarComponent> {
  int _selectedIndex = 0;

  final _pageOptions = [
    // TODO: 연결될 페이지 설정해주기
    Community(),
    ShortPec(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        // FIXME: _pageOptions 설정해주기
        // body: _pageOptions.elementAt(_selectedIndex),
        SizedBox(
      height: 64,
      child: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(homeIcon),
            activeIcon: SvgPicture.asset(
              homeIcon,
              color: const Color(0xff0059ff),
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                communityIcon,
                color: const Color(0xffb3b3b3),
              ),
              activeIcon: SvgPicture.asset(
                communityIcon,
              ),
              label: '커뮤니티'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(portfolioIcon),
              activeIcon: SvgPicture.asset(
                portfolioIcon,
                color: const Color(0xff0059ff),
              ),
              label: '포트폴리오'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(collectionIcon),
              activeIcon: SvgPicture.asset(
                collectionIcon,
                color: const Color(0xff0059ff),
              ),
              label: '컬렉션'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(mypageIcon),
            activeIcon: SvgPicture.asset(
              mypageIcon,
              color: const Color(0xff0059ff),
            ),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff0059ff),
        unselectedItemColor: const Color(0xffb3b3b3),
        onTap: _onItemTapped,
      ),
    );
  }
}
