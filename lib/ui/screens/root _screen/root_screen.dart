import 'package:flutter/material.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/string.dart';

import 'package:mvvm/ui/screens/courses/courses.dart';
import 'package:mvvm/ui/screens/home_screen/home_screen.dart';
import 'package:mvvm/ui/screens/root%20_screen/rootscreen_view_model.dart';

import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RootScreenViewModel(),
      child: Consumer<RootScreenViewModel>(
        // ignore: non_constant_identifier_names
        builder: (context, model, _) {
          final List<Widget> screens = [Courses()];

          return Scaffold(
            body: screens[model.selectedIndex],

            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: lightBlack,
              type: BottomNavigationBarType.fixed,
              currentIndex: model.selectedIndex,
              onTap: model.onClick,
              selectedItemColor: greenColor,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "$iconsAssets/rhome.png",
                    scale: 3,
                    color: model.selectedIndex == 0 ? greenColor : Colors.grey,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "$iconsAssets/rcours.png",
                    scale: 3,
                    color: model.selectedIndex == 1 ? greenColor : Colors.grey,
                  ),
                  label: "",
                ),

                BottomNavigationBarItem(
                  backgroundColor: lightBlack,
                  icon: Image.asset(
                    "$iconsAssets/add.png",
                    scale: 3,
                    // color: model.selectedIndex == 2
                    //     ? const Color.fromARGB(255, 44, 37, 35)
                    //     : const Color.fromARGB(255, 240, 0, 0),
                  ),
                  label: "",
                ),

                BottomNavigationBarItem(
                  icon: Image.asset(
                    "$iconsAssets/rvault.png",
                    scale: 3,
                    color: model.selectedIndex == 3 ? greenColor : Colors.grey,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "$iconsAssets/rchannel.png",
                    scale: 3,
                    color: model.selectedIndex == 4 ? greenColor : Colors.grey,
                  ),
                  label: "",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
