import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/buttons.dart';
import 'package:mvvm/ui/screens/auth/onbord_screen/onbording_screen.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                "$staticAssets/mail.png",
                height: 80,
                width: 99,
              ),
            ),
            30.verticalSpace,
            Text("Verify OTP", style: style30),
            Text(
              "Please enter OTP that we have sent you on sele********d123@gmail.com",
              style: style16.copyWith(color: greyColor),
            ),
            30.verticalSpace,
            Pinput(
              keyboardType: TextInputType.number,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              length: 6,
              obscureText: true,
              obscuringCharacter: '*', // use * instead of dot

              obscuringWidget: const Text(
                '*',
                style: TextStyle(
                  fontSize: 20, // adjust size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // match your style
                ),
              ),

              onSubmitted: (value) {},
              defaultPinTheme: PinTheme(
                textStyle: style16,
                width: 56,
                height: 60,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: greenColor,
                    ), // underline only
                  ),
                ),
              ),
            ),

            30.verticalSpace,
            CustomButton(
              text: "Verify",
              onTap: () {
                Get.to(OnbaordingScreen());
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
