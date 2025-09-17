import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';

class Onboardscreen extends StatelessWidget {
  const Onboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("$staticAssets/intersect.png"),

            30.verticalSpace,
            Text("Watch Videos & \nEarn Points", style: style30),
            30.verticalSpace,
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing.",
              style: style16.copyWith(color: greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
