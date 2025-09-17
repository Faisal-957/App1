import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("$staticAssets/onboard2.png"),

            30.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start Your Journey \nTowards Financial\nFreedom Today",
                    style: style30,
                  ),
                  30.verticalSpace,
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing.",
                    style: style16.copyWith(color: greyColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
