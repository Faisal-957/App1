import 'package:flutter/widgets.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/text_style.dart';

class IntrestButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const IntrestButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: lightBlack,
          border: Border.all(color: greyColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: style16.copyWith(
              color: isSelected ? lightGreenColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
