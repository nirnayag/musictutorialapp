import 'package:choira/comman/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../pages/homescreen.dart';
import 'continuebtn.dart';
import 'timmertext.dart';



/// This is the basic usage of Pinput
/// For more examples check out the demo directory
class otptextFeld extends StatefulWidget {
  const otptextFeld({Key? key}) : super(key: key);

  @override
  State<otptextFeld> createState() => _otptextFeldState();
}

class _otptextFeldState extends State<otptextFeld> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
   int secondsRemaining = 30;

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 46,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: textWhite
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor),
        color: Color(0xff14203B)
        
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Directionality(
                // Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) => const SizedBox(width: 8),
                  validator: (value) {
                    return value == '2222' ? null : 'Pin is incorrect';
                  },
                  // onClipboardFound: (value) {
                  //   debugPrint('onClipboardFound: $value');
                  //   pinController.setText(value);
                  // },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                    if (pin == '2222') { // Replace '2222' with the correct OTP
    // OTP is correct, navigate to a new screen
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomeScreen(), // Replace SuccessScreen with your desired screen
    ));
  }
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),

              
             
            ],
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TimerText(secondsRemaining: secondsRemaining,),
              ],
            )),
          Container(
              padding: EdgeInsets.fromLTRB(30, 75, 30, 0),
              child: CircularButton(
                onPress: (props) {
                   focusNode.unfocus();
              formKey.currentState!.validate();
                },
                props: {/* Any properties you want to pass */}
              ),
            ),
        ],
      ),
    );
  }
}