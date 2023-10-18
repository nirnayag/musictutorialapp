// import 'package:choira/pages/onboarding.dart';
import 'package:choira/component/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'pages/loginscreen.dart';
import 'pages/otpscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Example(),
        ),
      ),

    );
  }
}
