import 'package:flutter/material.dart';
import 'package:ondemandservices/consts/theme.dart';
import 'package:get/get.dart';
import 'package:ondemandservices/view/verifyotp/verifyotp.dart';

class LoginwithMobile extends StatelessWidget {
  const LoginwithMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oriantion = MediaQuery.of(context).orientation;
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: oriantion == Orientation.portrait || maxWidth <= 640
            ? SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: SizedBox(
                  width: maxWidth,
                  height: maxHeight,
                  child: Column(
                    children: [
                      loginimg(maxHeight / 2),
                      field(context, maxWidth),
                    ],
                  ),
                ),
              )
            : SizedBox(
                width: maxWidth,
                height: maxHeight,
                child: Row(
                  children: [
                    loginimg(maxHeight),
                    Expanded(
                      child: SizedBox(
                        height: maxHeight / 1.2,
                        child: field(context, maxWidth),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Container field(BuildContext context, double maxWidth) {
    return Container(
      height: maxWidth - 5,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "ENTER YOUR MOBILE NUMBER",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              elevation: 10.0,
              shadowColor: Colors.grey,
              child: TextFormField(
                maxLength: 10,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  fillColor: AppColors.bgColor,
                  filled: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          SizedBox(
            width: maxWidth / 1.4,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyOtp());
              },
              child: const Text("Login With Otp"),
            ),
          )
        ],
      ),
    );
  }

  Container loginimg(double maxHeight) {
    return Container(
      height: maxHeight,
      child: Image.asset(
        "assets/images/Mobile login.gif",
      ),
    );
  }
}
