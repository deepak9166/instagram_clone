import 'package:flutter/material.dart';
import 'package:insta_clone/componant/circle_image.dart';
import 'package:insta_clone/util/constant.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Activity",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: profileLinkList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("sandeep_solanki start following you."),
            trailing: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              child: Text(
                "Follow",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            subtitle: Text("Follow back"),
            leading: CircleImage(
              height: 45,
              image: profileLinkList[index],
            ),
          );
        },
      ),
    );
  }
}
