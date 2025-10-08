import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/text_style.dart';

//================ box====================
class CustomContinerprofile extends StatelessWidget {
  final String numbr;
  final String text;
  const CustomContinerprofile({
    super.key,
    required this.numbr,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(numbr, style: style16),
          Text(text, style: style12.copyWith(color: greyColor)),
        ],
      ),
    );
  }
}

//================ vedio box ==================================
class Customprofile2 extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;

  const Customprofile2({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(img, scale: 3),
        Text(title, style: style12),
        Text(subtitle, style: style12.copyWith(color: greyColor)),
      ],
    );
  }
}
//================tilelist=============

class Tilelsit extends StatelessWidget {
  final String imgh;
  final String text;

  const Tilelsit({super.key, required this.imgh, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40.w,
        width: 40.w,
        decoration: BoxDecoration(color: lightBlack, shape: BoxShape.circle),

        child: Image.asset(imgh, scale: 4),
      ),
      title: Text(text, style: style16),
    );
  }
}
