import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../component/continuebtn.dart';
import '../component/otp.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground, // Change to your desired background color
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
              child: Container(
                child: Image.asset('assets/loginscreen/icon2.png'), // Change to your image path
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Verify your mobile number',
                          style: TextStyle(fontSize: 18, color: textWhite),
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
                        style: TextStyle(fontSize: 14, color: textWhite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 20, 20),
              child: otptextFeld(),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
