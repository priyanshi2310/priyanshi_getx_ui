import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:priyanhi_getx_ui/app/featured_partner_screen/view/featured_screen.dart';

import 'package:priyanhi_getx_ui/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.mainHomeSCreen,
      getPages: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
      title: 'Flutter App with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeaturedScreen(),
    );
  }
}
