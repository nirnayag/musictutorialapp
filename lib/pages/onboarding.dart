import 'package:flutter/material.dart';

import '../comman/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Column(
        children: [
          SizedBox(
            height: 550,
            child: Stack(
              children: [
                Container(
                  width: screenWidth,
                  child: Image.asset(
                    'assets/onboard.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                  ),
                ),
                Positioned(
                  top: 375,
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.fromLTRB(
                        20, 20, 20, 0), // Adjust the top padding
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250,
                          height: 80,
                          child: Text(
                            'Achieve all\nyour goals now',
                            style: TextStyle(
                              fontSize: 35,
                              color: textWhite,
                              fontFamily: 'Playfair Display',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20, // Add space between the two text elements
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                            'Online courses to specialize in the entertainment field that lead the generation today.',
                            style: TextStyle(
                                fontSize: 14,
                                color: textWhite,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            width: screenWidth,
            child: ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              style: ElevatedButton.styleFrom(
                primary: buttonYellow, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(14.0), // Set the border radius
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: textBlack, // Text color
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            width: screenWidth,
            child: ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0A1733), // Make the button transparent
                onPrimary: textWhite, // Text color is white
                shape: RoundedRectangleBorder(
                  side:
                      BorderSide(color: textWhite, width: 1), // White border
                  borderRadius:
                      BorderRadius.circular(14.0), // Set the border radius
                ),
              ),
              child: Text(
                'Create account',
                style: TextStyle(
                  color: textWhite, // Text color is white
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Guest mode',
                  style: TextStyle(
                    color: textWhite, // Text color is white
                    fontSize: 15,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
