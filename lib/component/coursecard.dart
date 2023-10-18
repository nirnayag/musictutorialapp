import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../comman/fontsize.dart';
import '../data/datamodal.dart';

class CourseCard extends StatelessWidget {
  final MusicCourseData course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 70,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 68,
            width: 68,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                course.imageUrl,
                height: 68,
                width: 68,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              course.title,
              style: TextStyle(fontSize: tiny, color: textWhite),
              maxLines: 1, // Limit to one line
              overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
            ),
          )
        ],
      ),
    );
  }
}
