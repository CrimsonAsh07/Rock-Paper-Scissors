import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stone_paper_scissors/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RPS(),
  ));
}

class RPS extends StatelessWidget {
  const RPS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rock Paper Scissors',
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'assets/images/logo.png',
          splashIconSize: double.infinity,
          nextScreen: const Home(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: const Color(0xff212529),
        ));
  }
}
