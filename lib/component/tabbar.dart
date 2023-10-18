import 'package:flutter/material.dart';



class MyTabbedColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Content for Tab 1'),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Center(
                  child: Text('Content for Tab 2'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}