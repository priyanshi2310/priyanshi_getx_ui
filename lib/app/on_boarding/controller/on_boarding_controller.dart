import 'package:priyanhi_getx_ui/app/on_boarding/data_file/on_boarding_data.dart';
import 'package:priyanhi_getx_ui/app/on_boarding/model/product_model.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
   List<Product> myProduct = OnBoardingData.productList;
}

