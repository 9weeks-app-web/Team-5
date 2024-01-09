import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team5/Widget/slider.dart';
import 'package:team5/portfolio/portfolio_appbar.dart';
import 'package:team5/portfolio/portfolio_appbar.dart';
import 'package:team5/portfolio/portfolio_tapbar.dart';
import 'package:team5/utill/color.dart';

class Custom_recommend extends StatelessWidget {
  const Custom_recommend({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Portfolio_Appbar(),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape:
                            CircleBorder(), // 동그라미 모양으로 만들기 위해 CircleBorder 적용
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        minimumSize: Size(34, 34), // 최소 크기 지정
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child:
                            SvgPicture.asset('assets/icons/filter/default.svg'),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(76, 32), // 크기 조정
                        backgroundColor: Colors.white,

                        side: BorderSide(
                          color: Color(0xFFE6E6E6),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '최신순',
                            style: TextStyle(
                              color: Color(0xFF020202),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            child: SvgPicture.asset(
                                'assets/icons/filter/dropdown.svg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset('assets/images/view-list 1.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 360,
                height: 1040,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        child:
                            Image.asset('assets/images/Frame 1437256375.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
