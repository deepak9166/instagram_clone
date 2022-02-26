import 'package:flutter/material.dart';
import 'package:insta_clone/componant/circle_image.dart';
import 'package:insta_clone/util/color.dart';
import 'package:insta_clone/util/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/lock.png',
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "deep.kachchhawah",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/more.png",
                height: 20,
              )),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/menu.png",
              height: 20,
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(
                  child: mainHeaderView(),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 90,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: appPedding / 2),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CircleStatusImage(
                        currentIndex: index,
                        currentImage: profileLinkList[index],
                      );
                    },
                    itemCount: 20,
                  ),
                )),
                SliverPersistentHeader(
                  floating: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelColor: Colors.black,
                      enableFeedback: true,
                      indicatorColor: Colors.black26,
                      indicatorSize: TabBarIndicatorSize.tab,
                      automaticIndicatorColorAdjustment: false,
                      // unselectedLabelColor: AppColor.black,
                      onTap: (val) {},
                      // indicator:
                      //     const BoxDecoration(color: AppColor.purple2),
                      tabs: [
                        tabContainer("assets/images/pixels.png"),
                        tabContainer("assets/images/play-button.png"),
                        tabContainer("assets/images/photo.png"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: tabBody(context)),
      ),
    );
  }

  Widget tabContainer(String img) {
    return SizedBox(
      height: 45,
      child: Center(
        child: Image.asset(
          img,
          height: 20,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }

  Widget tabBody(BuildContext context) {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        // first tab bar view widget
        tab1View(),

        // second tab bar viiew widget
        tab1View(),
        // third tab bar viiew widget
        tab1View(),
      ],
    );
  }

  Widget profileStatus(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        Text(text2),
      ],
    );
  }

  Widget mainHeaderView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headerView(),
        aboutView(),
        editProfileView(),
      ],
    );
  }

  Widget headerView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPedding, vertical: 0),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CircleAvatar(
                foregroundImage: NetworkImage(linktest),
                radius: appPedding * 3,
              ),
            ),
            Expanded(
                flex: 7,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: appPedding * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileStatus("16", "Posts"),
                      profileStatus("230", "Followers"),
                      profileStatus("345", "Following"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget aboutView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPedding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("deepak"),
          Text("software engineer"),
        ],
      ),
    );
  }

  Widget tab1View() {
    return CustomScrollView(
      slivers: [
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Image.network(
                    postlinksList[index],
                    fit: BoxFit.fill,
                  ),
                );
              },
              childCount: postlinksList.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                mainAxisSpacing: 0,
                crossAxisCount: 3,
                crossAxisSpacing: 0))
      ],
    );
  }
}

Widget editProfileView() {
  var border = BoxDecoration(
      border: Border.all(
        width: 1.5,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(4));
  var m = const EdgeInsets.symmetric(vertical: appPedding / 2);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: appPedding),
    child: Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            margin: m,
            decoration: border,
            child: const Padding(
              padding: EdgeInsets.all(6),
              child: Center(
                  child: Text(
                "Edit profile",
                style: TextStyle(fontSize: 14),
              )),
            ),
          ),
        ),
        const SizedBox(
          width: appPedding / 2,
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: m,
            decoration: border,
            child: const Padding(
              padding: EdgeInsets.all(6),
              child: Center(
                child: Icon(
                  Icons.add_a_photo,
                  size: 14,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
