import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdshop/view/screens/widgets/text_utils.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Get.isDarkMode
                ? Image.asset('assets/images/check.png')
                : Icon(
                    Icons.done,
                    color: Colors.pink,
                    size: 30,
                  ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            TextUtils(
                text: 'I accept',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.none),
            const SizedBox(
              width: 3,
            ),
            TextUtils(
                text: 'term & conditions',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.underline),
          ],
        )
      ],
    );
  }
}
