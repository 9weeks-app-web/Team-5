import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/portfolio/respect.dart';

class Portfolio extends StatefulWidget {
  @override
  _Portfolio createState() => _Portfolio();
}

class _Portfolio extends State<Portfolio> {
  String view_type = 'assets/images/Sfaclog/One_view.svg';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            Center(child: RespectPage()),
            Center(
              child: Text('맞춤추천'),
            ),
            Center(child: RespectPage()),
            Center(
              child: Text('맞춤추천'),
            ),
          ],
        ),
      ),
    );
  }
}
