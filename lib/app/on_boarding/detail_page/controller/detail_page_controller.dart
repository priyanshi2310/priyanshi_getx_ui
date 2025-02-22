import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:priyanhi_getx_ui/app/on_boarding/model/product_model.dart';

class DetailPageController extends GetxController {
  Rxn<Product> product = Rxn(Product());
  @override
  void onInit() {
    super.onInit();
    print("In side detail page===");
    final args = Get.arguments;
    product.value = args["product"];
  }
}
