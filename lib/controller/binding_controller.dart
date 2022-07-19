import 'package:get/get.dart';
import 'package:tina/controller/fav_counter_controller.dart';
import 'package:tina/controller/product_cart_controller.dart';
import 'package:tina/core/localization/changelocal.dart';

class BindingController extends Bindings {
  @override
  void dependencies() {
    Get.put(LocaleController);
    Get.put(CartController);
    Get.put(FavCounterControllerImp);
  }
}
