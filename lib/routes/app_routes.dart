import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:priyanhi_getx_ui/app/featured_partner_screen/view/featured_screen.dart';
import 'package:priyanhi_getx_ui/app/home_screen/view/home_screen.dart';
import 'package:priyanhi_getx_ui/app/on_boarding/view/on_boarding_screen/on_boarding_screen.dart';

import 'package:priyanhi_getx_ui/homepage/view/navigation_screen.dart/navigation_screen.dart';

class AppRoutes {
  static String initialRoute = "/onBoardingScreen";
  static String onBoardingScreen = "/onBoardingScreen";
  static String homeScreen = "/homeScreen";
  static String featuredScreen = "/featuredScreen";
  static String mainHomeSCreen = "/mainHomePage";
  static String restaurentScreen = "/restaurentScreen";

  static List<GetPage> pages = [
    GetPage(name: onBoardingScreen, page: () => OnBoardingScreen()),
    GetPage(name: onBoardingScreen, page: () => OnBoardingScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: featuredScreen, page: () => FeaturedScreen()),
    GetPage(name: mainHomeSCreen, page: () => NavigationBarScreen()),

  ];
}
