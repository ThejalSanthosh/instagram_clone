import 'package:flutter/material.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/view/create_account_screen/create_account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CreateAccountScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Image.asset(ImageConstants.appIconPng),
      ),
    );
  }
}
