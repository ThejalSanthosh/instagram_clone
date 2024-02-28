import 'package:flutter/material.dart';
import 'package:instagram/core/constants/image_constants.dart';

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

    //  ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount)

    ],
   ),

    );
  }
}