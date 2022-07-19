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
  @override
  void addFavItemToList() {
    if (!favList.contains(
      CustomProductItem(
        productName: Get.arguments["productName"],
        productImg: Get.arguments["productImg"],
        productPrice: Get.arguments["productPrice"],
      ).productName,
    )) {
      favList.add(CustomProductItem(
        productName: Get.arguments["productName"],
        productImg: Get.arguments["productImg"],
        productPrice: Get.arguments["productPrice"],
      ));
      numOfItems++;
    } else {
      Get.snackbar("title", "message");
    }
  }

  @override
  void goToFavoritePage() {
    Get.toNamed(AappRoute.favorite);
  }
}
