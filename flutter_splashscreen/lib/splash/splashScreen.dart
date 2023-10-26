import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_splashscreen/home/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: const Text('Splash Screen'),
      nextScreen: const HomePage(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.scale,
    );
  }
}