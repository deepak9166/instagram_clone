import 'package:flutter/material.dart';
import 'package:insta_clone/util/constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: appPedding / 2),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: appPedding / 2),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Search",
                      fillColor: Colors.grey.shade200,
                      border: InputBorder.none),
                ),
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.network(
                        linkTest2,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  childCount: 20,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                    crossAxisSpacing: 0))
          ],
        ),
      ),
    );
  }
}
