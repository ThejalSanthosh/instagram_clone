import 'package:flutter/material.dart';
import 'package:instagram/view/create_post_screen/create_post_screen.dart';
import 'package:instagram/view/create_account_screen/create_account_screen.dart';
import 'package:instagram/view/home_screen/home_screen.dart';
import 'package:instagram/view/profile_screen/profile_screen.dart';
import 'package:instagram/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int bottomIndex = 0;

  List screenList = [
    HomeScreen(),
    SearchScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.black,
    ),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value != 2) {
              bottomIndex = value;

              setState(() {});
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePostScreen(),
                  ));
            }
          },
          currentIndex: bottomIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_filled),
                label: "",
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.add),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      "https://scontent-maa2-1.cdninstagram.com/v/t51.2885-19/395308835_3463668007277756_5707619813024977731_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-maa2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=0fjovmMCKcMAX9GQCT0&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBJZbAPQWv-TzqBjOFJs25TiyKB908ZS-3SbB8K4bNnNA&oe=65EB9982&_nc_sid=8b3546"),
                ),
                label: ""),
          ]),
    );
  }
}
