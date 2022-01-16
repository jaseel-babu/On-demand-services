import 'package:flutter/material.dart';
import 'package:ondemandservices/consts/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ondemandservices/controller/bottambarController.dart/bottambarController.dart';
import 'package:ondemandservices/view/allservices/allservices.dart';
import 'package:ondemandservices/view/chat/chat.dart';
import 'package:ondemandservices/view/homePage/homepage.dart';
import 'package:ondemandservices/view/loginPage/loginpage.dart';
import 'package:ondemandservices/view/userProfile/userProfile.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final controller = Get.find<BottamBarController>();
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home),
      Image.asset(
        "assets/images/icons8-service-24.png",
      ),
      Image.asset("assets/images/icons8-chat-30.png"),
      const Icon(Icons.person)
    ];
    final screens = [
      const HomePage(),
      const AllServices(),
      const ChatPage(),
      const UserProfile()
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leading: GestureDetector(
          onTap: () {
            Get.to(() => LoginwithMobile());
          },
          child: Image.asset(
            "assets/images/1.png",
            color: AppColors.iconColor,
          ),
        ),
      ),
      body: GetBuilder<BottamBarController>(
        builder: (controller) {
          return screens[controller.selectedindex];
        },
      ),
      bottomNavigationBar: GetBuilder<BottamBarController>(
        builder: (contoller) {
          return CurvedNavigationBar(
            height: 50,
            color: AppColors.primaryColor,
            backgroundColor: Colors.transparent,
            items: items,
            index: contoller.selectedindex,
            onTap: (value) {
              controller.selectedindex = value;
              controller.update();
            },
          );
        },
      ),
    );
  }
}
