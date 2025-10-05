import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/core/model/onbordingmodel.dart';

// ignore: must_be_immutable
class CustomOnboaring extends StatelessWidget {
  OnbaordingItem onbaordingItem;

  CustomOnboaring({super.key, required this.onbaordingItem});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "${onbaordingItem.image}",
            //height: 545,
            //  width: double.infinity,
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${onbaordingItem.title}", style: style24),
                Text(
                  "${onbaordingItem.subtitle}",
                  style: style16.copyWith(color: greyColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
