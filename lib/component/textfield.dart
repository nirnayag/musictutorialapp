import 'package:choira/component/continuebtn.dart';
import 'package:flutter/material.dart';

import '../pages/otpscreen.dart';

class MobileField extends StatelessWidget {
  final int otpPhoneNumber = 9876543210;

  @override
  Widget build(BuildContext context) {
    final textColor = Colors.white;
    final containerColor = Color(0xff14203B);

    TextEditingController phoneNumberController = TextEditingController();

    void navigateToOtpScreen() {
      // Define your OtpScreen widget and navigation here
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpScreen()));
    }

    void showErrorMessage(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    }

    void onContinuePressed() {
      String phoneNumberText = phoneNumberController.text;
      if (phoneNumberText.isEmpty) {
        showErrorMessage("Please enter a phone number.");
      } else {
        int? phoneNumber = int.tryParse(phoneNumberText);
        if (phoneNumber != null) {
          if (phoneNumber == otpPhoneNumber) {
            navigateToOtpScreen();
          } else {
            showErrorMessage("Phone number must be $otpPhoneNumber.");
          }
        } else {
          showErrorMessage("Invalid phone number format.");
        }
      }
    }

    return Column(
      children: [
        Container(
          color: containerColor,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '+91 |',
                  style: TextStyle(color: textColor),
                ),
              ),
              Flexible(
                child: TextField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    fillColor: containerColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Your Phone Number',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  style: TextStyle(color: textColor),
                  keyboardType: TextInputType.phone,
                  keyboardAppearance: Brightness.dark,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 75, 30, 0),
          child: CircularButton(onPress: onContinuePressed, props: {})
        ),
      ],
    );
  }
}
