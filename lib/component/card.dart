import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../comman/fontsize.dart';
import '../data/datamodal.dart';

class FreeCard extends StatelessWidget {
  final MusicCourseData course;

  const FreeCard({super.key,required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 180,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                course.imageUrl,
                height: 150,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
               course.title,
              style: TextStyle(fontSize: tiny, color: textWhite),
              maxLines: 1, // Limit to one line
              overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0,40, 0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.record_voice_over, color: buttonYellow, size: mini),
                      SizedBox(width: 4,),
                      Text(
                        '2k students',
                        style: TextStyle(fontSize: mini, color: textWhite),

                        maxLines: 1, // Limit to one line
                        overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Icon(Icons.group, color: buttonYellow, size: mini),
                      SizedBox(width: 3,),

                      Text(
                        'Hector Vega',
                        style: TextStyle(fontSize: mini, color: textWhite),
                        maxLines: 1, // Limit to one line
                        overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            
            child: Container(
              
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                color: Color(0xff429FF8).withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(7.5))
              ),
              child: Center(
                child: Text("Introduction", style: TextStyle(color: Color(0xff429FF8), fontSize: mini)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
