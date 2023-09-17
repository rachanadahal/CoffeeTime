// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  // final int initialIndex;
  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  // get onTabChages => null;
  @override
  Widget build(BuildContext context) {
    // var onTabChange;
    return Container(
      margin: EdgeInsets.all(25.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 25,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            // iconSize: 20,
          ),
          GButton(
            icon: Icons.shop,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
