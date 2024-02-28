import 'package:flutter/material.dart';
import 'package:instagram/view/home_screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
int bottomIndex=0;

List screenList =[HomeScreen(),Colors.red,Colors.yellow,Colors.green] ;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

              body: screenList[bottomIndex],
     

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,

           onTap: (value) {
            value=bottomIndex;
               setState(() {
        
                      });
               },


          type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
      BottomNavigationBarItem(icon: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Icon(Icons.add),
      ),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ""),
    BottomNavigationBarItem(icon: CircleAvatar(radius: 15,),label: ""),
      
      ]),
    );
  }
}