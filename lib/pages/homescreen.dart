import 'package:choira/comman/colors.dart';
import 'package:flutter/material.dart';
import '../comman/fontsize.dart';
import '../component/card.dart';
import '../component/coursecard.dart';
import '../component/customappbar.dart';
import '../component/searchfeild.dart';
import '../data/datamodal.dart';
import 'courseDetailpage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: CustoAppBar(
        leadingIcon: Image.asset('assets/onbord/ooo.png'),
        leadingOnTap: () {},
        leadingIconColor: textWhite,
        actionIcon1: Icon(Icons.notifications_outlined),
        onTapAction1: () {},
        colorAction1: textWhite,
        actionIcon2: Image.asset('assets/onbord/profile.png'),
        onTapAction2: () {},
        colorAction2: textWhite,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(tiny),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('What are you going to learn today?',style: TextStyle(fontSize: large, color: textWhite),),
              Padding(
                padding: const EdgeInsets.only(top:large),
                child: CircularSearchTextField(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:large),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Courses',style: TextStyle(fontSize: medium, color: textWhite)),
                    TextButton(onPressed: (){}, child: Text('View more',style: TextStyle(fontSize: small, color: textWhite)))
                  ],
                ),
              ),
              Container(
                height: 110,
                child: MusicCourseList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:large),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('learn for free',style: TextStyle(fontSize: medium, color: textWhite)),
                    TextButton(onPressed: (){}, child: Icon(Icons.more_horiz_outlined,size: huge,color: textWhite))
                  ],
                ),
              ),
              Container(
                height: 160,
                child: FreeCourseList(),
              ),
      
             Padding(
               padding: const EdgeInsets.only(top:large),
               child: Container(
               decoration: BoxDecoration(
                 gradient: cardcolor,
                 borderRadius: BorderRadius.circular(20),
               ),
               width: 360,
               height: 80,
               child: Row(
                 children: [
                   Container(
                     width: 175,
                     height: 175,
                     child: Image.asset('assets/lock.png', fit: BoxFit.cover),
                   ),
             
                   SizedBox(
                     child: Text('Access more than 700 \ncourses by purchasing a plan',style: TextStyle(fontSize: small_semi,color: textWhite),),
                   )
                 ],
               ),
             ),
             )
      
            ],
          ),
        ),
      ),
    );
  }
}

class MusicCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: musicCourses.length,
      itemBuilder: (context, index) {
        final course = musicCourses[index];
        return GestureDetector( // Wrap the card in a GestureDetector for tapping
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetail(course: course),
              ),
            );
          },
          child: CourseCard(course: course),
        );
      },
    );
  }
}

class FreeCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: musicCourses.length,
      itemBuilder: (context, index) {
        final course = musicCourses[index];
        return GestureDetector( // Wrap the card in a GestureDetector for tapping
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetail(course: course),
              ),
            );
          },
          child: FreeCard(course: course),
        );
      },
    );
  }
}
