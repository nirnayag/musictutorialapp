import 'package:flutter/material.dart';

import '../comman/colors.dart';
import '../pages/homescreen.dart';

class BottomNbar extends StatefulWidget {
  @override
  _BottomNbarState createState() => _BottomNbarState();
}

class _BottomNbarState extends State<BottomNbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: myGradient,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(0, Icons.home, Icons.home_outlined),
                _buildNavItem(1, Icons.favorite, Icons.favorite_border),
                _buildNavItem(2, Icons.search, Icons.search_outlined),
                _buildNavItem(3, Icons.person, Icons.person_outline),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData activeIcon, IconData inactiveIcon) {
    bool isActive = _selectedIndex == index;
    IconData icon = isActive ? activeIcon : inactiveIcon;
    double iconSize = isActive ? 34.0 : 26.0; // Adjust the size as needed

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? textWhite: textWhite.withOpacity(0.6),
            size: iconSize, // Set the size of the icon
          ),
          if (isActive)
            Icon(
              Icons.arrow_drop_down, // Customize the arrow as needed
              color: Colors.blue,
              size: 16,
            ),
        ],
      ),
    );
  }
}



