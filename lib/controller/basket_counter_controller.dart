// ignore_for_file: iterable_contains_unrelated_type

import 'package:get/get.dart';
import 'package:tina/core/constant/app_img_asset.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

abstract class BasketCounterController extends GetxController {
  //final List<CustomProductItem> listOfProduct;

  void addBasketItemToList();
  void goToBasketPage();
}

class BasketCounterControllerImp extends BasketCounterController {
  var numOfItems = 0.obs;
  var basketList = <CustomProductItem>[].obs;
  var isBasket= false.obs;
  @override
  void addBasketItemToList() {
    if (!isBasket.value) {
      //isFavorite = true;
      basketList.add(CustomProductItem(
        productName: Get.arguments["productName"],
        productImg: Get.arguments["productImg"],
        productPrice: Get.arguments["productPrice"],
      ));

      numOfItems++;
      //update();
    } else {
      //isFavorite = false;
      //Get.snackbar("Added".tr, "It has already been added to your wishlist".tr);
    }
  }

  @override
  void goToBasketPage() {
    Get.toNamed(AappRoute.cartListScreen);
  }

  @override
  bool isBaskets() {
    if (isBasket.value == false) {
      return isBasket.value = true;
    } else {
      return false;
    }
  }
}
