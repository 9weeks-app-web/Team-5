import 'package:flutter/material.dart';
import '/community/view/appbar/AppBar.dart';
import '/community/view/tabbar/TabBar.dart';
import '/screen/bottom_nagivation_bar.dart';
import '/screen/noticeboard.dart';

class Community extends StatefulWidget {
  @override
  _Community createState() => _Community();
}

class _Community extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          width: 360,
          height: 740,
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                height: 48,
                width: 360,
                child: CustomAppBarWidget(),
              ),
              Container(
                width: 360,
                height: 40,
                child: CustomTabBar(),
              ),
              Expanded(
                child: TabBarView(children: [
                  Notice_board(),
                  // Notice_board(),
                  // Notice_board(),
                  // Notice_board(),
                ]),
              ),
              // Container(
              //   width: 360,
              //   height: 564,
              //   child: SingleChildScrollView(
              //       child: Column(
              //     children: [
              //       Expanded(
              //         child: TabBarView(children: [
              //           Notice_board(),
              //           Notice_board(),
              //           Notice_board(),
              //           Notice_board(),
              //         ]),
              //       )
              //     ],
              //   )),
              // ),
              Container(
                height: 64,
                child: BottomNavigationBarComponent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
