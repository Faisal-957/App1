import 'package:flutter/material.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/text_style.dart';

class CoursesContiner extends StatelessWidget {
  final String image;
  final String text;
  final String subtitile;

  const CoursesContiner({
    super.key,
    required this.image,
    required this.text,
    required this.subtitile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 📌 Left Image
        Image.asset(image, scale: 4),

        const SizedBox(width: 8), // spacing between image & texts
        /// 📌 Expanded Text Area
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: style16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis, // ✅ truncate if too long
              ),
              const SizedBox(height: 4),
              Text(
                subtitile,
                style: style12.copyWith(color: greyColor),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
