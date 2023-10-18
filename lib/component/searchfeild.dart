import 'package:choira/comman/colors.dart';
import 'package:flutter/material.dart';

class CircularSearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: feildColor, // Use hex color value
        borderRadius: BorderRadius.circular(25.0), // Adjust the radius for the desired circular shape
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        style: TextStyle(color: textWhite),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: textWhite.withOpacity(0.5)),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: textWhite, // Color for the search icon
          ),
        ),
      ),
    );
  }
}
