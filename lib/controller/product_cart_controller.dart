import 'package:get/state_manager.dart';
import 'package:tina/view/screens/product/product_cart.dart';

class CartController extends GetxController {
  var numOfItems = 1.obs;

  void removeItem() {
    if (numOfItems.value > 1) {
      numOfItems.value--;
      qtyNum = numOfItems.value;
    }
  }

  void addItem() {
    numOfItems.value++;
    qtyNum = numOfItems.value;
  }

  String amount(String price) {
    return (numOfItems.value * double.parse(price)).toString();
  }
}
