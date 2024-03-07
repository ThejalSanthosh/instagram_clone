import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/dummy_db.dart';
import 'package:instagram/view/home_screen/widgets/custom_story_avatar.dart';
import 'package:instagram/view/home_screen/widgets/user_post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(ImageConstants.cameraIconPng),
        title: Image.asset(ImageConstants.instaLogoPng),
        centerTitle: true,
        actions: [
          Image.asset(ImageConstants.igTvPng),
          SizedBox(
            width: 18,
          ),
          Image.asset(ImageConstants.messagePng),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storyList.length,
                    (index) => CustomStoryAvatar(
                          userName: DummyDb.storyList[index]["userName"],
                          proPic: DummyDb.storyList[index]["proPic"],
                          isLive: DummyDb.storyList[index]["isLive"],
                        )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: .10),
                  borderRadius: BorderRadius.circular(5)),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DummyDb.postListImages.length,
              itemBuilder: (context, index) => CustomUserPostWidget(
                proPic: DummyDb.postListImages[index]["profilepic"],
                userName: DummyDb.postListImages[index]["userName"],
                place: DummyDb.postListImages[index]["place"],
                image: DummyDb.postListImages[index]["image"],
                isLIked: DummyDb.postListImages[index]["isLiked"],
                caption: DummyDb.postListImages[index]["caption"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
