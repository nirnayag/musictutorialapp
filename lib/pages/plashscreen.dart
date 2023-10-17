import 'package:flutter/material.dart';

import '../comman/colors.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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