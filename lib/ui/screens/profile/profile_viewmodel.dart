import 'package:flutter/widgets.dart';
import 'package:mvvm/core/constants/string.dart';
import 'package:mvvm/core/view_model/base_view_model.dart';
import 'package:mvvm/ui/custom_widget/buttons/cutom_continerprofile.dart';

class ProfileViewmodel extends BaseViewModel {
  List<Customprofile2> profile1 = [
    Customprofile2(
      img: "$staticAssets/profil33.png",
      title: "Learn how to use constraint in financial crisis.",
      subtitle: "145k Views | 5 days ago",
    ),
    Customprofile2(
      img: "$staticAssets/profil22.png",
      title: "How to manage your assetsportfolio?",
      subtitle: "12k Views | 2 days ago",
    ),
    Customprofile2(
      img: "$staticAssets/profil33.png",
      title: "Learn how to use constraint in financial crisis.",
      subtitle: "145k Views | 5 days ago",
    ),
    Customprofile2(
      img: "$staticAssets/profil22.png",
      title: "How to manage your assets portfolio?",
      subtitle: "12k Views | 2 days ago",
    ),
    Customprofile2(
      img: "$staticAssets/profil33.png",
      title: "Learn how to use constraint in financial crisis.",
      subtitle: "145k Views | 5 days ago",
    ),
  ];
}
