import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpFieldController otpFieldController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to your desired background color
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your logo or image here
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
              child: Container(
                child: Image.asset('assets/loginscreen/icon2.png'), // Change to your image path
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Verify your mobile number',
                          style: TextStyle(fontSize: 18, color: Colors.black), // Change text style
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Please enter the 4-digit verification code sent to',
                          style: TextStyle(fontSize: 14, color: Color(0xff7A7C7C)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '+91 9876543210',
                        style: TextStyle(fontSize: 14, color: Colors.black), // Change text style
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: OTPTextField(
                controller: otpFieldController, // Assign the OtpFieldController
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 80,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: $pin");
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Expect code in 30 seconds',
                    style: TextStyle(fontSize: 14, color: Color(0xff7A7C7C)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 75, 30, 0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button click here
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

