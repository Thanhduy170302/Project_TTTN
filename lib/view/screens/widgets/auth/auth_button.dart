import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdshop/utils/theme.dart';
import 'package:tdshop/view/screens/widgets/text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Get.isDarkMode ? mainColor : pinkClr,
        minimumSize: Size(360, 50),
      ),
      child: TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          underLine: TextDecoration.none),
    );
  }
}
