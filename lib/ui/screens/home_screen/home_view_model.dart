import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/constants/text_style.dart';
import 'package:video_player/video_player.dart';

class SavoKidsScreenViewModel extends ChangeNotifier {
  bool isLiked = false;
  int selectedTabIndex = 0;

  late VideoPlayerController videoController;
  bool isVideoInitialized = false;

  SavoKidsScreenViewModel() {
    initVideo();
  }

  /// Initialize video from URL
  Future<void> initVideo() async {
    videoController = VideoPlayerController.networkUrl(
      Uri.parse(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      ),
    );

    await videoController.initialize();
    videoController.setLooping(true);
    videoController.pause();

    isVideoInitialized = true;
    notifyListeners();
  }

  void like() {
    isLiked = !isLiked;
    notifyListeners();
  }

  void tabSelected(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }
}

//================ drawer tile list===========================
// ignore: must_be_immutable
class Drawerlist extends StatelessWidget {
  // List<Drawerlist> drawer1 = [
  //   Drawerlist(pic: "$iconsAssets/frame.png", text: "My Profile"),
  //   Drawerlist(pic: "$iconsAssets/vedioo.png", text: "Videos"),
  //   Drawerlist(pic: "$iconsAssets/lock.png", text: "Safety Deposit"),
  //   Drawerlist(pic: "$iconsAssets/searchd.png", text: "Discover"),
  //   Drawerlist(pic: "$iconsAssets/rvault.png", text: "Vault"),
  //   Drawerlist(pic: "$iconsAssets/message.png", text: "Help"),
  //   Drawerlist(pic: "$iconsAssets/channel.png", text: "Channels"),
  // ];
  final String pic;
  final String text;
  Drawerlist({super.key, required this.pic, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40.w,
        width: 40.w,
        decoration: BoxDecoration(color: lightBlack, shape: BoxShape.circle),

        child: Image.asset(pic, scale: 4),
      ),
      title: Text(text, style: style16),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
///////// list for drawe////////////////////////////