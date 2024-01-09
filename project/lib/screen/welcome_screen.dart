import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screen/community_screen.dart';
import '../utill/color.dart';
import '/screen/onboarding_first_screen.dart';
import 'mainPage.dart';

const partypopper = 'assets/images/Party_popper.png';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                Image.asset(partypopper),
                SizedBox(
                  height: 34,
                ),
                Text(
                  '회원가입 완료',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700, height: 1.5),
                ),
                SizedBox(
                  height: 47,
                ),
                Text.rich(
                  TextSpan(
                    text: '지금 관심사를 설정하고\n',
                    children: <TextSpan>[
                      TextSpan(
                        text: '맞춤추천',
                        style: TextStyle(
                          color: AppColor.Primary100,
                        ),
                      ),
                      TextSpan(text: '을 받아보세요!')
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 2,
                  ),
                ),
                SizedBox(
                  height: 147,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                             Home()), // 다른 웰컴 페이지로 이동시켜줘야 함
                    );
                  },
                  child: Text(
                    '나중에 설정하기',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColor.Neutral60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => OnBoardingFirstPage());
                  },
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return FittedBox(
                        child: Text(
                          '다음',
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
