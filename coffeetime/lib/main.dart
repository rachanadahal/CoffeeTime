// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:coffeetime/models/coffee_shop.dart';
import 'package:coffeetime/pages/home_Page.dart';
import 'package:coffeetime/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
