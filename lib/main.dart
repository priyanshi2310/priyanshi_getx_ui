import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage/view/navigation_screen.dart/navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBarScreen(),
    );
  }
}
