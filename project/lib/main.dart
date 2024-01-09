import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/employment_dummy_data.dart';
import 'screen/user_controller.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screen/LoginPage2.dart';
import 'screen/SplashPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(UserController());
  Get.put(ClickController());
  Get.put(BookmarkController());
  runApp(
    GetMaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Pretendard',
          ),
        ),
      ),
    ),
  );

  Future.delayed(
    Duration(seconds: 1),
    () {
      Get.off(LoginPage2());
    },
  );
}
