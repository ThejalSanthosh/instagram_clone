import 'package:flutter/cupertino.dart';
import 'package:instagram/dummy_db.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: DummyDb.storyList.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 4),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(DummyDb.storyList[index]["proPic"]),
                fit: BoxFit.cover)),
      ),
    );
  }
}
