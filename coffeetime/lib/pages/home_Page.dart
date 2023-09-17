// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeetime/components/bottom_nav_bar.dart';
import 'package:coffeetime/pages/cart_page.dart';
import 'package:coffeetime/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:coffeetime/const.dart';

class Home_Page extends StatefulWidget {
  Home_Page({super.key});
  //   List<_pages>[shop_page(),cart_Page()

  //  ];

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [ShopPage(), CartPage()];
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (value) => navigateBottomBar(value),
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
