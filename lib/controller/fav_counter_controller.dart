// ignore_for_file: iterable_contains_unrelated_type

import 'package:get/get.dart';
import 'package:tina/core/constant/app_img_asset.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';

abstract class FavCounterController extends GetxController {
  //final List<CustomProductItem> listOfProduct;

  void addFavItemToList();
  void goToFavoritePage();
}

class FavCounterControllerImp extends FavCounterController {
  var numOfItems = 0.obs;
  var favList = <CustomProductItem>[].obs;
  var isFavorite = false.obs;
  @override
  void addFavItemToList() {
    if (!isFavorite.value) {
      //isFavorite = true;
      favList.add(CustomProductItem(
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
  void goToFavoritePage() {
    Get.toNamed(AappRoute.favorite);
  }

  @override
  bool isFavorites() {
    if (isFavorite.value == false) {
      return isFavorite.value = true;
    } else {
      return false;
    }
  }
}
