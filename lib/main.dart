import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ondemandservices/controller/apicontroller.dart';
import 'package:ondemandservices/controller/bottambarController.dart/bottambarController.dart';
import 'package:ondemandservices/controller/onbordmodel/onbordcontroller.dart';
import 'package:ondemandservices/view/homePage/homepage.dart';
import 'package:ondemandservices/view/mainPage.dart';
import 'package:ondemandservices/view/onboardPage/onboard.dart';
import 'package:ondemandservices/view/registerPage/registerPage.dart';
import 'package:ondemandservices/view/verifyotp/verifyotp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'consts/theme.dart';

void main() {
  

  runApp(
    GetMaterialApp(
      home: MyApp(),
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardController());
    Get.put(BottamBarController());
      Get.put(apiController());
    final controller = Get.find<OnboardController>();
    controller.isAlreadyComplate();

    return GetBuilder<OnboardController>(
      builder: (controller) {
        return controller.complateonboard == true ? MainPage() : OnBoardPage();
      },
    );
  }
}
