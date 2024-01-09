import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '/main.dart';
import '../portfolio/portfolio.dart';
import '/screen/mainPage.dart';
import '/screen/myPage.dart';
import '/screen/shortpec.dart';

import '../controller/bottom_navigation.dart';
import 'collection.dart';
import 'community_screen.dart';
// import 'mainPage.dart';
// import 'myPage.dart';

const homeIcon = 'assets/icons/Home.svg';
const communityIcon = 'assets/icons/Community.svg';
const portfolioIcon = 'assets/icons/Portfolio.svg';
const collectionIcon = 'assets/icons/Collection.svg';
const mypageIcon = 'assets/icons/Mypage.svg';

class BottomNavigationBarComponentBlack extends StatefulWidget {
  const BottomNavigationBarComponentBlack({super.key});

  @override
  State<BottomNavigationBarComponentBlack> createState() =>
      _BottomNavigationBarComponentStateBlack();
}

class _BottomNavigationBarComponentStateBlack
    extends State<BottomNavigationBarComponentBlack> {
  final NavigationController navigationController =
      Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: BottomNavigationBar(
        backgroundColor: Color(0xFF000000),
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
        currentIndex: navigationController.selectedIndex.value,
        selectedItemColor: const Color(0xff0059ff),
        unselectedItemColor: const Color(0xffb3b3b3),
        onTap: (index) {
          navigationController.updateIndex(index);
          switch (index) {
            case 0:
              Get.to(() => Home());
              break;
            case 1:
              Get.to(() => Community());
              break;
            case 2:
              Get.to(() => Portfolio());
              break;
            case 3:
              Get.to(() => Collection());
              break;
            case 4:
              Get.to(() => MyPage());
              break;
            default:
          }
        },
      ),
    );
  }
}
