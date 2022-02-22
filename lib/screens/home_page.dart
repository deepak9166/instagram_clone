import 'package:flutter/material.dart';
import 'package:insta_clone/componant/circle_image.dart';
import 'package:insta_clone/util/color.dart';
import 'package:insta_clone/util/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 130,
          leading: Padding(
            padding: const EdgeInsets.only(left: appPedding),
            child: Image.asset("assets/images/intatitle.png"),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/more.png",
                  height: 20,
                )),
            //message
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/message.png",
                  height: 20,
                )),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleStatusImage(
                    currentIndex: index,
                  );
                },
                itemCount: 20,
              ),
            )),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return postView();
              }, childCount: 20),
            )
          ],
        ));
  }

  Widget postView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          minLeadingWidth: 45,
          horizontalTitleGap: 10,
          leading: CircleImage(
            height: 45,
          ),
          title: Text(
            "deep_offic",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.network(linktest),
        ListTile(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/love.png",
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/bubble-chat.png",
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/send.png",
                    height: 20,
                  )),
            ],
          ),
          trailing: Image.asset(
            "assets/images/mark.png",
            height: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "567,345 views - ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("Liked by"),
              const Text(
                "sandeep_098",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            "View all 65 comments",
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
