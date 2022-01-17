import 'package:flutter/material.dart';
import 'package:ondemandservices/consts/theme.dart';
import 'package:ondemandservices/view/mainPage.dart';
import 'package:ondemandservices/view/registerPage/halfcircles.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();
    final oriantion = MediaQuery.of(context).orientation;
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            if (oriantion == Orientation.portrait || maxWidth <= 640)
              SizedBox(
                width: maxWidth,
                height: maxHeight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 5),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Imagelogin(),
                        const SizedBox(
                          height: 20,
                        ),
                        textfield(nameController, "Fullname"),
                        const SizedBox(
                          height: 20,
                        ),
                        textfield(passwordController, "Password"),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => MainPage());
                          },
                          child: const Text("Register"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            else
              Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Imagelogin(),
                        field("Full Name", nameController),
                        field("Password", passwordController),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Register"),
                  ),
                ],
              ),
            if (oriantion == Orientation.portrait || maxWidth <= 640)
              Positioned(
                top: -30,
                child: halfcircle(
                  drawerClip: DrawerClip(),
                ),
              )
            else
              const SizedBox(),
            if (oriantion == Orientation.portrait || maxWidth <= 640)
              Positioned(
                right: 20,
                bottom: -30,
                child: halfcircle(drawerClip: DrawerClip2()),
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget field(String hint, TextEditingController controller) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5),
        child: Form(
          child: textfield(controller, hint),
        ),
      ),
    );
  }

  Material textfield(TextEditingController controller, String hint) {
    return Material(
      shadowColor: Colors.grey,
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return "Required";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hint,
          focusedBorder: InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget Imagelogin() {
    return CircleAvatar(
      backgroundColor: AppColors.iconColor,
      radius: 70,
      backgroundImage:
          const AssetImage("assets/images/—Pngtree—avatar beauty_4645864.png"),
    );
  }
}
