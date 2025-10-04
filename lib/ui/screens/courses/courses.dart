import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/courses_continer.dart';
import 'package:mvvm/ui/screens/courses/courses_viewmodel.dart';
import 'package:provider/provider.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesViewmodel(),
      child: Consumer<CoursesViewmodel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: blackColor,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("$staticAssets/app_logo.png", height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "$iconsAssets/searchicon.png",
                            height: 28,
                          ),
                          const SizedBox(width: 12),

                          /// ✅ Toggle ZoomDrawer
                          GestureDetector(
                            onTap: () {
                              //_drawerController.toggle?.call();
                            },
                            child: Image.asset(
                              "$iconsAssets/drawericon.png",
                              height: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text("Courses", style: style24),

                  20.verticalSpace,
                  CoursesContiner(
                    image: "$staticAssets/courses.png",
                    text: "Learning strategy: Mutual fund or Stocks",
                    subtitile:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit..",
                  ),
                  20.verticalSpace,
                  CoursesContiner(
                    image: "$staticAssets/courses2.png",
                    text: "Learn how to use constraint in financia..",
                    subtitile:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit..",
                  ),
                  20.verticalSpace,
                  CoursesContiner(
                    image: "$staticAssets/courses3.png",
                    text: "How to invest in mutual fund for best..",
                    subtitile:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit..",
                  ),
                  20.verticalSpace,
                  CoursesContiner(
                    image: "$staticAssets/courses4.png",
                    text: "Which one is better?Real Estate or Equity",
                    subtitile:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit..",
                  ),
                  20.verticalSpace,
                  CoursesContiner(
                    image: "$staticAssets/courses5.png",
                    text: "How to start investing in Stock market?",
                    subtitile:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit..",
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
