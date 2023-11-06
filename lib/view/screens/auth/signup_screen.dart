import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdshop/utils/theme.dart';
import 'package:tdshop/view/screens/widgets/auth/auth_button.dart';
import 'package:tdshop/view/screens/widgets/auth/auth_text_from_field.dart';
import 'package:tdshop/view/screens/widgets/auth/check_widget.dart';
import 'package:tdshop/view/screens/widgets/auth/container_under.dart';
import 'package:tdshop/view/screens/widgets/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        elevation: 0,
      ),
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextUtils(
                            text: "SIGN",
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Get.isDarkMode ? mainColor : pinkClr,
                            underLine: TextDecoration.none),
                        const SizedBox(
                          width: 7,
                        ),
                        TextUtils(
                            text: "UP",
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                            underLine: TextDecoration.none),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthTextFromField(
                      controller: nameController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/user.png')
                          : Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 30,
                            ),
                      suffixIcon: Text(""),
                      hintText: 'User name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextFromField(
                      controller: emailController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/email.png')
                          : Icon(
                              Icons.email,
                              color: Colors.pink,
                              size: 30,
                            ),
                      suffixIcon: Text(""),
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextFromField(
                      controller: passController,
                      obscureText: true,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/lock.png')
                          : Icon(
                              Icons.lock,
                              color: Colors.pink,
                              size: 30,
                            ),
                      suffixIcon: Text(""),
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const CheckWidget(),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthButton(
                      onPressed: () {},
                      text: "Sign Up",
                    ),
                  ],
                ),
              ),
            ),
            ContainerUnder(
              text: "Don't you have account?",
              textType: "Login",
              onPressed: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
