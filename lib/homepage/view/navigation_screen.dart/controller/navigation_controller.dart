import 'package:get/get.dart';

class NavigationController extends GetxController {
  var visit = 0.obs;

  void changeTabIndex(int index) {
    visit.value = index;
  }
}
