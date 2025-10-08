import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/buttons.dart';

import 'package:mvvm/ui/screens/auth/subscription/plans/subscription_viewmodel.dart';
import 'package:mvvm/ui/screens/select%20Intrest/Select_Intrest.dart';
import 'package:provider/provider.dart';

class SavoSubscription extends StatelessWidget {
  final List<String> benifits = [
    "Customized access to classes, guides, trainings and coaching sessions.",
    "Change your Mindset. Change your Behavior.",
    "Join a community of like-minded generational wealth builders.",
    "Daily access to financial news and easy-to-understand analysis",
    "... and much more!",
  ];
  SavoSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SubscriptionPlansViewModel(),
      child: Consumer<SubscriptionPlansViewModel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("$staticAssets/children.png"),
                    // Positioned icon
                    Positioned(
                      top: 50, // distance from top
                      left: 20, // distance from left
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                30.verticalSpace,
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SAVO Subscription", style: style30),
                      Text(
                        "Whether youre a first time homebuyer or lookong to diversify your investments, the SAVO community is here to help.",
                        style: style16.copyWith(color: greyColor),
                      ),
                      Text("Benefits", style: style30),
                    ],
                  ),
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: benifits.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        "$iconsAssets/tick-circle.png",
                        scale: 3,
                      ),
                      title: Text(
                        benifits[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
                30.verticalSpace,
                CustomButton(
                  onTap: () {
                    Get.to(Selectintrest());
                  },
                  boxColor: greenColor,
                  text: "Choose Your Plan",
                ),
                30.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
