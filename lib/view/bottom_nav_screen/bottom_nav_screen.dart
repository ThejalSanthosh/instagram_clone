import 'package:flutter/material.dart';
import 'package:instagram/view/create_account_screen/create_account_screen.dart';
import 'package:instagram/view/home_screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
int bottomIndex=0;

List screenList =[HomeScreen(),Container(color: Colors.red,),Container(color: Colors.green,),Container(color: Colors.black,),Container(color: Colors.blueGrey,)] ;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

              body: screenList[bottomIndex],
     

      bottomNavigationBar: BottomNavigationBar(

           onTap: (value) {

            if(value!=2){
            bottomIndex=value;

               setState(() {
        
                      });

            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountScreen(),));
            }
               },

        currentIndex: bottomIndex,

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