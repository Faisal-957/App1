import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/buttons/buttons.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';

import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: lightBlack,
      controller: _drawerController,
      style: DrawerStyle.defaultStyle,
      borderRadius: 24.0,
      showShadow: true,
      angle: 1,
      slideWidth: MediaQuery.of(context).size.width * 0.7,
      drawerShadowsBackgroundColor: whiteColor,
      isRtl: true,
      //shrinkMainScreen: true,
      mainScreenScale: -0.0,

      //mainScreenOverlayColor: greenColor,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,

      /// ✅ Drawer Menu
      menuScreen: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("$iconsAssets/salena.png"),
            ),
            Text("Selena Grande", style: style24),
            Text(
              "selenagrande@mail.com",
              style: style24.copyWith(color: greyColor),
            ),
            const SizedBox(height: 20),
            ...List.generate(
              10,
              (index) => ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  child: Image.asset("$iconsAssets/email.png", height: 20),
                ),
                title: Text("My Profile", style: style16),
                trailing: Image.asset("$iconsAssets/farrow.png", height: 20),
              ),
            ),
          ],
        ),
      ),

      /// ✅ Main TikTok-style screen
      mainScreen: ChangeNotifierProvider(
        create: (_) => SavoKidsScreenViewModel(),
        child: Consumer<SavoKidsScreenViewModel>(
          builder: (context, value, _) {
            return Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  /// ✅ Background Video
                  Positioned.fill(
                    child: value.isVideoInitialized
                        ? FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: value.videoController.value.size.width,
                              height: value.videoController.value.size.height,
                              child: VideoPlayer(value.videoController),
                            ),
                          )
                        : const Center(child: CircularProgressIndicator()),
                  ),

                  Column(
                    children: [
                      /// ✅ Header with drawer toggle
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "$staticAssets/app_logo.png",
                              height: 40,
                            ),
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
                                    _drawerController.toggle?.call();
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
                      ),

                      /// ✅ Tabs
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                text: "SAVO Kids",
                                onTap: () => value.tabSelected(0),
                                boxColor: value.selectedTabIndex == 0
                                    ? greenColor
                                    : whiteColor,
                                textColor: value.selectedTabIndex == 0
                                    ? whiteColor
                                    : blackColor,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: CustomButton(
                                text: "SAVO Senior",
                                onTap: () => value.tabSelected(1),
                                boxColor: value.selectedTabIndex == 1
                                    ? greenColor
                                    : whiteColor,
                                textColor: value.selectedTabIndex == 1
                                    ? whiteColor
                                    : blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// ✅ Video bottom overlays
                      Expanded(
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  bottom: 40,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "529 College Savings Plan vs. Annuities",
                                      style: style12.copyWith(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    const Text(
                                      "What plan will work best for your child’s tuition.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(height: 6),
                                    const Text(
                                      "Jonathon Doe · 3 days ago",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 16,
                                  bottom: 40,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        "$staticAssets/avatar.png",
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    GestureDetector(
                                      onTap: value.like,
                                      child: Icon(
                                        Icons.favorite,
                                        color: value.isLiked
                                            ? Colors.red
                                            : whiteColor,
                                        size: 32,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "12k",
                                      style: style12.copyWith(
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    const Icon(
                                      Icons.comment,
                                      color: whiteColor,
                                      size: 32,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "786",
                                      style: style12.copyWith(
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    const Icon(
                                      Icons.share,
                                      color: whiteColor,
                                      size: 32,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
