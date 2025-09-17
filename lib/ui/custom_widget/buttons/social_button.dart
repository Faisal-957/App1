import 'package:flutter/material.dart';
import 'package:mvvm/core/constants/colors.dart';

// ignore: must_be_immutable
class SocailButton extends StatelessWidget {
  VoidCallback? onTap;
  Icon? icon;
  SocailButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(backgroundColor: whiteColor, child: icon),
    );
  }
}
