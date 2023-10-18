import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../comman/fontsize.dart';
import '../component/customappbar.dart';
import '../data/datamodal.dart';
// Import your main.dart file to access the data

class CourseDetail extends StatelessWidget {
  final MusicCourseData course;

  CourseDetail({required this.course});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBackground,
        appBar: CustoAppBar(
          leadingIcon: Icon(Icons.arrow_back),
          leadingOnTap: () {
            Navigator.of(context).pop();
          },
          leadingIconColor: textWhite,
          actionIcon1: Icon(Icons.cast),
          onTapAction1: () {},
          colorAction1: textWhite,
          actionIcon2: Icon(Icons.more_vert),
          onTapAction2: () {},
          colorAction2: textWhite,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(course.title,style: TextStyle(fontSize: extraLarge, color: textWhite),),
                Text(course.description,maxLines: 1,style: TextStyle(fontSize: extraLarge, color: textWhite),),
             
                ],
               ),
             ),

            Image.network(course.imageUrl),
            SizedBox(height: 16),
            Text(
              course.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              course.description,
              style: TextStyle(
                fontSize: 15,
              ),
            ),


            
          ],
        ),
      ),
    );
  }
}
