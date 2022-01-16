import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ondemandservices/model/onbordmodel/onboardmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardController extends GetxController {
  @override
  void onInit() {
    isAlreadyComplate();
    super.onInit();
  }

  var selectedIndex = 0;
  PageController pageController = PageController();
  bool lastpage = false;
  List<Onboardmodel> onboardingpage = [
    Onboardmodel(
      imageAsset: "assets/images/Taking notes-pana (2).png",
      title: "On-Demand Services That Is Available Nearby",
    ),
    Onboardmodel(
      imageAsset: "assets/images/Make it rain-bro.png",
      title: "Become a Seller  Of Your Services",
    )
  ];
  pageforward(int index) {
    index == onboardingpage.length - 1 ? lastpage = true : lastpage = false;
    print(lastpage);
    selectedIndex = index;
    if (lastpage == true) {}
  }

  bool? complateonboard;
  isAlreadyComplate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    complateonboard = prefs.getBool("entered");
    update();
  }
}
