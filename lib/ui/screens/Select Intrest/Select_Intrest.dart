import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/auth_field_decoration.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/buttons.dart';
import 'package:mvvm/ui/custom_widget/buttons/intrest_button.dart';
import 'package:mvvm/ui/screens/Select%20Intrest/Select_Intrest_viewmodel.dart';
import 'package:provider/provider.dart';

class Selectintrest extends StatelessWidget {
  const Selectintrest({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectIntrestViewmodel(),
      child: Consumer<SelectIntrestViewmodel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("$staticAssets/app_logo.png", scale: 6),
                  30.verticalSpace,

                  Text("Select Your Interests", style: style24),
                  10.verticalSpace,
                  Text(
                    'Select your top 5 Interests to Start your Savo journey',
                    style: style16.copyWith(color: greyColor),
                  ),
                  30.verticalSpace,
                  TextFormField(
                    style: TextStyle(color: whiteColor),
                    decoration: intrestsearch.copyWith(),
                  ),
                  30.verticalSpace,
                  Text("Select Interests", style: style24),
                  Wrap(
                    alignment: WrapAlignment.spaceAround,

                    children: List.generate(
                      model.intrest.length,
                      (index) => IntrestButton(
                        text: model.intrest[index],
                        onTap: () {
                          model.onClick(index);
                        },
                        isSelected: model.isSelected(model.intrest[index]),
                      ),
                    ),
                  ),
                  30.verticalSpace,
                  CustomButton(
                    onTap: () {},
                    text: "Continue",
                    boxColor: greenColor,
                  ),
                  30.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
