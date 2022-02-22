import 'package:flutter/material.dart';
import 'package:insta_clone/util/constant.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/chat.png",
                  height: 20,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/send.png",
                  height: 20,
                  color: Colors.white,
                )),
          ],
        ),
        body: Stack(
          children: [
            bottomView(),
            Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
          ],
        ));
  }

  Widget bottomView() {
    var border = BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(4));
    return Positioned(
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.all(appPedding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  "Old song * ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            spach(),
            Row(
              children: [
                const CircleAvatar(
                  radius: 12,
                ),
                const Text(" ummmmm  ",
                    style: const TextStyle(color: Colors.white)),
                Container(
                  decoration: border,
                  child: const Padding(
                    padding: EdgeInsets.all(1),
                    child:
                        Text("Follow", style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
            spach(),
            const Text(
              "mini vlog...",
              style: TextStyle(color: Colors.white),
            ),
            spach(),
            const Text(
              "52.003 likes",
              style: const TextStyle(color: Colors.white),
            ),
            spach(),
            const Text(
              "best song of the year && *** - O",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget spach() {
    return const SizedBox(
      height: appPedding / 2,
    );
  }
}
