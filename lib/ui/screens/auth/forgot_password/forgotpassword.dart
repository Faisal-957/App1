import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm/core/constants/auth_field_decoration.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/buttons.dart';
import 'package:mvvm/ui/screens/auth/otp_verification/otp_verification.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Image.asset(
                "$staticAssets/lock.png",
                height: 80,
                width: 99,
              ),
            ),
            30.verticalSpace,
            Text("Forgot Password", style: style30),
            Text(
              "Please enter your registered email, We  will send you OTP",
              style: style16.copyWith(color: greyColor),
            ),
            30.verticalSpace,
            TextFormField(
              style: style16,
              decoration: authFieldDecoration.copyWith(
                labelText: "Email",
                suffixIcon: Image.asset(
                  "$iconsAssets/tick-circle.png",
                  scale: 4,
                ),
                prefixIcon: Image.asset("$iconsAssets/email.png", scale: 4),
              ),
            ),
            30.verticalSpace,
            CustomButton(
              text: "Send OTP",
              onTap: () {
                Get.to(OtpVerification());
              },
              boxColor: greenColor,
              textColor: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
