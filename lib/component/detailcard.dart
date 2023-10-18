
import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../comman/fontsize.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(tiny),
        color: feildColor.withOpacity(0.6),
    
        ),
        height: 175,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
                    children: [
                      Container(
                        
                        child: Image.asset('assets/onbord/profile.png'),
        
                    
                      ),
                      SizedBox(width: 10,),
                      Text('Tannia Oberoi',style: TextStyle(fontSize: semi_medium, color: textWhite)),
        
                      
                    ],
                  ),
                  Text('Mentor',style: TextStyle(fontSize: small, color: textWhite)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
    
                child: SizedBox(
                  child: Text(
                    'Music is the spiritual representation of an idea and one of the most important forms of communication in our daily lives.'
                    ,style: TextStyle(fontSize: tiny, color: textWhite)
                  ),
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
                        Icon(Icons.group, color: buttonYellow, size: tiny),
                        SizedBox(width: 4,),
                        Text(
                          '2k students',
                          style: TextStyle(fontSize: tiny, color: textWhite),
    
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
                        Icon(Icons.play_circle, color: buttonYellow, size: tiny),
                        SizedBox(width: 3,),
    
                        Text(
                          '10 lessons',
                          style: TextStyle(fontSize: tiny, color: textWhite),
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
                        Icon(Icons.star, color: buttonYellow, size: tiny),
                        SizedBox(width: 3,),
    
                        Text(
                          '4.5 score',
                          style: TextStyle(fontSize: tiny, color: textWhite),
                          maxLines: 1, // Limit to one line
                          overflow: TextOverflow.ellipsis, // Add ellipsis if the text overflows
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    ) ;
  }
}