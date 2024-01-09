import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utill/color.dart';
import 'mainPage.dart';

const partypopper = 'assets/images/Party_popper.png';

class WelcomeHomePage extends StatelessWidget {
  const WelcomeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTextStyle(
          style:
              TextStyle(fontFamily: 'Pretendard', color: AppColor.Neutral100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                SizedBox(
                  height: 34,
                ),
                Text(
                  '환영합니다',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700, height: 1.5),
                ),
                SizedBox(
                  height: 39,
                ),
                Image.asset('assets/images/welcome.png'),
                SizedBox(height: 40,),
                Text.rich(
                  TextSpan(
                    text: '님의 취향을 저격할\n',
                    children: <TextSpan>[TextSpan(text: '스팩폴리오를 즐겨보세요!')],
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 2,
                  ),
                ),
                SizedBox(
                  height: 117,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => Home());
                  },
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return FittedBox(
                        child: Text(
                          '확인',
                          style: TextStyle(
                              fontFamily: 'Pretendard',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.03),
                        ),
                        fit: BoxFit.scaleDown,
                      );
                    },
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.Primary100),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: AppColor.Primary100),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
