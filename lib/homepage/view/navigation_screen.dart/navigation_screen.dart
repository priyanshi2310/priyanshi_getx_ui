import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
// import 'package:priyanhi_getx_ui/app/on_boarding/view/on_boarding_screen/on_boarding_screen.dart';
import 'package:priyanhi_getx_ui/app/home_screen/view/home_screen.dart';

import 'controller/navigation_controller.dart';

List<TabItem> items = [
  const TabItem(icon: Icons.restaurant, title: 'Home'),
  const TabItem(icon: Icons.search, title: 'Search'),
  const TabItem(icon: Icons.line_style, title: 'Orders'),
  const TabItem(icon: Icons.person_2, title: 'Profile'),
];

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() {
        return [
          const HomeScreen(),
          // const FavoriteScreen(),
          // const NotificationScreen(),
          // const ProfileScreen(),
        ][controller.visit.value];
      }),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomBarFloating(
          items: items,
          iconSize: 24,
          backgroundColor: Colors.transparent,
          color: Colors.grey,
          colorSelected: Color(0xffEEA734),
          indexSelected: controller.visit.value,
          paddingVertical: 10,
          onTap: (int index) {
            controller.changeTabIndex(index);
          },
        ),
      ),
    );
  }
}
