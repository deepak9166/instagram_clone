import 'package:flutter/material.dart';
import 'package:insta_clone/util/color.dart';
import 'package:insta_clone/util/constant.dart';

class CircleStatusImage extends StatelessWidget {
  final int currentIndex;
  const CircleStatusImage({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusCircle(currentIndex);
  }

  Widget statusCircle(int index) {
    return SizedBox(
      width: 80,
      child: Stack(
        children: [
          Center(
              child: SizedBox(
            width: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPedding / 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleImage(
                    height: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "It's_servan_me sdfsfs ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          )),
          index != 0
              ? const SizedBox()
              : Positioned(
                  bottom: 30,
                  right: 0,
                  child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ))),
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final double height;
  const CircleImage({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(height / 2),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColor.yellow,
            AppColor.purpleColor,
            AppColor.pink
          ])),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(height / 2),
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: height / 2,
                      foregroundImage: NetworkImage(
                        linktest,
                        // fit: BoxFit.fill,
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
