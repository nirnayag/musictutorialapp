import 'package:flutter/material.dart';

class MobileField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textColor = Colors.white;
    final containerColor = Color(0xff14203B);

    return Container(
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
                keyboardType: TextInputType.number,
                keyboardAppearance: Brightness.dark,
            ),
          ),
        ],
      ),
    );
  }
}

