import 'package:flutter/material.dart';

import '../comman/colors.dart';

class TimerText extends StatefulWidget {
  final int secondsRemaining;

  TimerText({required this.secondsRemaining});

  @override
  State<TimerText> createState() => _TimerTextState();
}

class _TimerTextState extends State<TimerText> {

   int secondsRemaining = 30;
  late ValueNotifier<int> timerNotifier;

  @override
  void initState() {
    super.initState();

    timerNotifier = ValueNotifier<int>(secondsRemaining);

    // Start the countdown timer when the page opens
    startTimer();
  }

  void startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        timerNotifier.value = secondsRemaining;
        startTimer(); // Call startTimer recursively
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ValueListenableBuilder<int>(
            valueListenable: timerNotifier,
            builder: (context, value, child) {
              return RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Expect code in ',
                    style: TextStyle(fontSize: 14, color: Color(0xff7A7C7C)),
                  ),
                  TextSpan(
                    text: '$value seconds',
                    style: TextStyle(fontSize: 14, color: textWhite),
                  ),
                ]),
              );
            },
          ),
        ],
      ),
    );
  }
}
