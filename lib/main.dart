// import 'package:choira/pages/onboarding.dart';
import 'package:choira/component/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'component/video/videoplaye.dart';
import 'pages/loginscreen.dart';
import 'pages/otpscreen.dart';
import 'pages/plashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
       child: SplashScreen(),

    ));
  }
}
