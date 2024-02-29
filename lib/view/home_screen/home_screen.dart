import 'package:flutter/material.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/dummy_db.dart';
import 'package:instagram/view/home_screen/widgets/custom_story_avatar.dart';

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
      Image.asset(ImageConstants.igTvPng),SizedBox(width: 18,),
      Image.asset(ImageConstants.messagePng),SizedBox(width: 15),
    ],
  ),


   body: Column(

    children: [

     SingleChildScrollView(
     
      scrollDirection: Axis.horizontal,
       child: Row(
       
        children: 
       
          List.generate(DummyDb.storyList.length, (index) => CustomStoryAvatar(userName: DummyDb.storyList[index]["userName"], proPic: DummyDb.storyList[index]["proPic"],isLive: DummyDb.storyList[index]["isLive"],))
        ,
       ),
     )

    ],
   ),

    );
  }
}