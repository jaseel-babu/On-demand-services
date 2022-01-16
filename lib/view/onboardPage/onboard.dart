import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ondemandservices/consts/theme.dart';
import 'package:ondemandservices/controller/onbordmodel/onbordcontroller.dart';
import 'package:ondemandservices/view/mainPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardPage extends StatelessWidget {
  OnBoardPage({Key? key}) : super(key: key);
  PageController pageController = PageController();
  bool lastpage = true;
  final controller = Get.find<OnboardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<OnboardController>(
          builder: (controller) {
            return PageView.builder(
              controller: controller.pageController,
              onPageChanged: (value) => controller.selectedIndex,
              itemCount: controller.onboardingpage.length,
              itemBuilder: (context, index) {
                controller.pageforward(index);
                return Center(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              controller.onboardingpage[index].imageAsset,
                              height: MediaQuery.of(context).size.height / 2,
                            ),
                            Text(
                              controller.onboardingpage[index].title,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                color: AppColors.tilebgColor,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "fasdfdsafdfhfkjhjaseeel bavbu mancheru bnafnjhnssff",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                      ),
                                    ),
                                    if (!controller.lastpage)
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Swipe Left",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline3,
                                          ),
                                          Image.asset(
                                            "assets/images/—Pngtree—swipe left icon_4422015.png",
                                            width: 50,
                                            height: 50,
                                            color: AppColors.subtextColor,
                                          )
                                        ],
                                      )
                                    else
                                      TextButton(
                                        onPressed: () async {
                                          SharedPreferences prefs =
                                              await SharedPreferences
                                                  .getInstance();
                                          prefs.setBool("entered", lastpage);
                                          Get.to(() => MainPage());
                                        },
                                        child: Text(
                                          "Start",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
