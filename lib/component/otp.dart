import 'package:flutter/material.dart';


class OTPField extends StatelessWidget {
  final TextEditingController otpController;

  OTPField({required this.otpController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: otpController,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counterText: "",
              border: InputBorder.none,
            ),
            onChanged: (String value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  FocusScope.of(context).nextFocus();
                }
              }
            },
          ),
        );
      }),
    );
  }
}
