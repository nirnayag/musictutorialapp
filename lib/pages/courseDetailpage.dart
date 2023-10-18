import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../comman/fontsize.dart';
import '../component/customappbar.dart';
import '../component/detailcard.dart';
import '../component/video/videoplaye.dart';
import '../data/datamodal.dart';

// Import your custom components and other dependencies here

class CourseDetail extends StatefulWidget {
  final MusicCourseData course;

  CourseDetail({required this.course});

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> with SingleTickerProviderStateMixin {
  // Create a controller for the tab bar
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose the TabController when no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBackground,
        appBar:  CustoAppBar(
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
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.course.title, style: TextStyle(fontSize: extraLarge, color: textWhite)),
                  Text(widget.course.description, maxLines: 1, style: TextStyle(fontSize: extraLarge, color: textWhite)),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Add your tab bar and content here
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              
              child: Container(
                decoration: BoxDecoration(
                    color: feildColor.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(small)
                  ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: feildColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(small)
                  ),
                  tabs: [
                    Tab(text: 'lessons'),
                    Tab(text: 'about the course'),
                
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Add your tab content here
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VideoPlayerScreen(),
                        SizedBox(height: 10,),
                  
                        DetailCard(),
                    Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Lessons', style: TextStyle(fontSize: medium, color: textWhite)),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                    decoration: BoxDecoration(
                            color: feildColor.withOpacity(0.6),

                      borderRadius: BorderRadius.circular(5)
                    ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                        
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                              
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Introduction',style: TextStyle(fontSize: small, color:textWhite )),
                                        Text('2min\n2s',style: TextStyle(fontSize: tiny, color: textWhite.withOpacity(0.5))),
                                        
                                      ],
                                    ),
                                    Icon(Icons.keyboard_arrow_up,color: textWhite,size: small_semi,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                              
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('\$308',style: TextStyle(fontSize: semi_large, color:textWhite )),
                                        Text('per month',style: TextStyle(fontSize: small, color: textWhite.withOpacity(0.5))),
                                        
                                      ],
                                    ),
                                    Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: buttonYellow,
                                        borderRadius: BorderRadius.circular(tiny)
                                      ),
                                      child: Center(child: Text('Suscribe',style: TextStyle(fontSize: medium, color: primaryBackground))),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      ),
                    )

                  
                  
                      ],
                    ),
                  ),
                  NoDataAvalable(),


                ],
              ),
            ),
            
          
          ],
        ),
      ),
    );
  }
}



class NoDataAvalable extends StatelessWidget {
  const NoDataAvalable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: primaryBackground, // Dark background color
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off,
              size: 48,
              color: Colors.white, // White icon color
            ),
            SizedBox(height: 16),
            Text(
              'No Data Available',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, // White text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
