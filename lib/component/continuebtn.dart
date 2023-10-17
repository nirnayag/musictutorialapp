import 'package:flutter/material.dart';

import '../comman/colors.dart';

class CircularButton extends StatelessWidget {
  final double radius = 25; // 25 pixels
  final Color color = contunueYellow;
  final double buttonHeight = 40;
  final Function onPress;
  final dynamic props;

  CircularButton({required this.onPress, required this.props});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Full width
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () => onPress(props),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
        child: Text('Continue',style: TextStyle(color: textContinue),),
      ),
    );
  }
}

// Usage:
