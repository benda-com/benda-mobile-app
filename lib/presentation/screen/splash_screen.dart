import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:benda/presentation/screen/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset(
              "images/benda_icon.png",
              width: 60,
            )
          ],
        ),
        backgroundColor: Colors.white,
        nextScreen: HomeScreen());
  }
}
