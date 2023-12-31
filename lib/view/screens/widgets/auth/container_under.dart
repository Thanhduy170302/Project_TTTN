import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdshop/utils/theme.dart';
import 'package:tdshop/view/screens/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textType;

  const ContainerUnder(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? mainColor : pinkClr,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
              text: text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underLine: TextDecoration.none),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(
                text: textType,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                underLine: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
