import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:priyanhi_getx_ui/app/on_boarding/view/on_boarding_screen/on_boarding_screen.dart';

class AppRoutes {
  static String initialRoute = "/OnBoardingScreen";
  static String onBoardingScreen = "/OnBoardingScreen";


  static List<GetPage> pages = [
    GetPage(name: onBoardingScreen, page: () => OnBoardingScreen()),
  ];
}
