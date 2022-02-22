import 'package:flutter/material.dart';
import 'package:insta_clone/screens/activity_screen.dart';
import 'package:insta_clone/screens/home_page.dart';
import 'package:insta_clone/screens/profile.dart';
import 'package:insta_clone/screens/reels.dart';
import 'package:insta_clone/screens/search.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Widget currentView = const HomePage();
  @override
  Widget build(BuildContext context) {
    List<TabBarModel> screenTab = const [
      TabBarModel(
        icon: "assets/images/home.png",
        screen: HomePage(),
      ),
      TabBarModel(icon: "assets/images/loupe.png", screen: SearchScreen()),
      TabBarModel(icon: "assets/images/movie.png", screen: ReelsScreen()),
      TabBarModel(icon: "assets/images/love.png", screen: ActivityScreen()),
      TabBarModel(icon: "assets/images/profile.png", screen: ProfileScreen()),
    ];

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var item in screenTab)
              IconButton(
                icon: Image.asset(
                  item.icon,
                  scale: 22,
                ),
                onPressed: () {
                  currentView = item.screen;
                  setState(() {});
                },
              )
          ],
        ),
      ),
      body: currentView,
    );
  }
}

class TabBarModel {
  final Widget screen;
  final String icon;
  const TabBarModel({required this.icon, required this.screen});
}
