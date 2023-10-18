import 'dart:async';

import 'package:choira/pages/homescreen.dart';
import 'package:choira/pages/loginscreen.dart';
import 'package:choira/pages/onboarding.dart';
import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../component/bottomnavbar.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
void initState() {
  super.initState();
  // Delay for 1 second
  Timer(Duration(seconds: 5), () {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => OnBoarding()));
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}



class homepng extends StatefulWidget {
  const homepng({super.key});

  @override
  State<homepng> createState() => _homepngState();
}

class _homepngState extends State<homepng> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNbar(),
      ),
    );
  }
}