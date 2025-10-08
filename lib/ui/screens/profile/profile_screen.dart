import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/cutom_continerprofile.dart';
import 'package:mvvm/ui/screens/profile/profile_viewmodel.dart';
import 'package:provider/provider.dart';

class ProfileScree extends StatelessWidget {
  const ProfileScree({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProfileViewmodel(),
      child: Consumer<ProfileViewmodel>(
        builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset("$staticAssets/profil1.png"),
                    Positioned(
                      left: 30,
                      top: 50,

                      child: Image.asset("$iconsAssets/backk.png", scale: 4),
                    ),
                    Positioned(
                      left: 415,
                      top: 50,
                      child: Image.asset("$iconsAssets/cours.png", scale: 4),
                    ),
                    Positioned(
                      top: 150,
                      left: 190,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("$iconsAssets/salena.png"),
                      ),
                    ),
                  ],
                ),
                50.verticalSpace,
                Text("Selena Grande", style: style30),

                Text(
                  "selenagrande@mail.com",
                  style: style16.copyWith(color: greyColor),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContinerprofile(numbr: "582", text: "Followrs"),
                    CustomContinerprofile(numbr: "502", text: "Following"),
                    CustomContinerprofile(numbr: "15", text: "vedios"),
                  ],
                ),
                20.verticalSpace,
                Image.asset("$iconsAssets/line.png"),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent", style: style24),
                      Text(
                        "View All,",
                        style: style16.copyWith(color: greenColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250, // list ki height
                  width: double.infinity, // full screen width
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: model.profile1.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16), // item gap
                        child: SizedBox(
                          width: 200, // har item ka width
                          child: model.profile1[index],
                        ),
                      );
                    },
                  ),
                ),
                20.verticalSpace,
                Image.asset("$iconsAssets/line.png"),
                20.verticalSpace,
                Tilelsit(imgh: "$iconsAssets/vedio.png", text: "Your Videos"),
                Tilelsit(imgh: "$iconsAssets/clock.png", text: "Watch Later"),
                Tilelsit(imgh: "$iconsAssets/heart.png", text: "Liked Videos"),
                Tilelsit(imgh: "$iconsAssets/music.png", text: "Playlist"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
