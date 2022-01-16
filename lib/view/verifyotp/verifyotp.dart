import 'package:flutter/material.dart';
import 'package:ondemandservices/consts/theme.dart';
import 'package:ondemandservices/main.dart';
import 'package:ondemandservices/view/mainPage.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:get/get.dart';

class VerifyOtp extends StatelessWidget {
  VerifyOtp({Key? key}) : super(key: key);
  TextEditingController _pinEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final oriantion = MediaQuery.of(context).orientation;
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: oriantion == Orientation.portrait || maxWidth <= 640
              ? SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      imgpart(context, maxHeight),
                      fieldpath(context, maxWidth),
                    ],
                  ),
                )
              : Row(
                  children: [
                    imgpart(context, maxWidth / 1.5),
                    fieldpath(context, maxWidth / 2),
                  ],
                ),
        ),
      ),
    );
  }

  Column fieldpath(BuildContext context, double maxWidth) {
    return Column(
      children: [
        Text(
          "Enter 6 digits verification code",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: PinInputTextField(
            controller: _pinEditingController,
            decoration: BoxLooseDecoration(
              strokeColorBuilder: PinListenColorBuilder(
                AppColors.iconColor,
                Colors.black,
              ),
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: maxWidth / 1.4,
            child: ElevatedButton(
                onPressed: () {
                  _pinEditingController.text.length != 6
                      ? Get.snackbar("Invalid", "Please Enter Valid Otp",
                          snackPosition: SnackPosition.BOTTOM)
                      : Get.to(() => MainPage());
                },
                child: const Text("Verify")),
          ),
        ),
        Center(child: TextButton(onPressed: () {}, child: Text("Resend Otp")))
      ],
    );
  }

  Column imgpart(BuildContext context, double size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Verify Mobile\nNumber",
          style: Theme.of(context).textTheme.headline3,
        ),
        Container(
          height: size / 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/Enter OTP-bro.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
