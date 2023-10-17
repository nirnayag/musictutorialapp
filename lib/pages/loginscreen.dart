import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../component/continuebtn.dart';
import '../component/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,80,0,20),
                child: Container(child: Image.asset('assets/loginscreen/icon2.png')),
              ),
            ],
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
                      Text('Enter your mobile number',style: TextStyle(fontSize: 18,color: textWhite),),
                    ],
                  )),
            Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),

              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text('You will receive a 4 digit code verification',style: TextStyle(fontSize: 14,color: Color(0xff7A7C7C))),
                ],
              )),
              ],
            ),
          ),



          
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: MobileField()),

          Container(
          padding: EdgeInsets.fromLTRB(30, 75, 30, 0),

            child: CircularButton(
            onPress: (props) {
              // Your custom logic when the button is pressed
              // You can use the `props` parameter to pass data or perform actions.
            },
            props: {/* Any properties you want to pass */}
          ),
          )
        ],
      ),
    );
  }
}