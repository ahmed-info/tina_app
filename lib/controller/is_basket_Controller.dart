// ignore_for_file: file_names

import 'package:get/get.dart';

abstract class IsBasketController extends GetxController {
  bool isBasketFunc();
}

class IsBasketControllerImp extends IsBasketController {
  var isBasket = false.obs;
  @override
  bool isBasketFunc() {
    if (isBasket.value == false) {
      return isBasket.value = true;
    } else {
      return true;
    }
  }
}
