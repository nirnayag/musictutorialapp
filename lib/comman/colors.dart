import 'package:flutter/material.dart';

const Color primaryBackground = Color(0xff0A1733);
const Color buttonYellow = Color(0xffFFC701);
const Color textWhite = Colors.white;
const Color textBlack = Colors.black;
const Color contunueYellow = Color(0xffF1B103);
const Color textContinue = Color(0xff505152);

const Color feildColor = Color(0xff14203B);

LinearGradient myGradient = LinearGradient(
  colors: [
    Color(0xff13213A),
    // Color(0xff141F3A),
    Color(0xff14203B), // Original color
    Color(0xff14203C),
    Color(0xff14213A),
    Color(0xff142139),
    Color(0xff14203A),
    // Color(0xff141F39),
    Color(0xff13213B),
    Color(0xff14213B),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient cardcolor = LinearGradient(
  colors: [
    Color(0xff9D4D52).withOpacity(0.3),
    Color(0xff101E3B),
    Color(0xff94B061).withOpacity(0.5),

  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);