import 'package:get/get.dart';

abstract class IsFavController extends GetxController {
  bool isFavoriteFunc();
}

class IsFavControllerImp extends IsFavController {
  var isFavorite = false.obs;
  @override
  bool isFavoriteFunc() {
    if (isFavorite.value == false) {
      return isFavorite.value = true;
    } else {
      return true;
    }
  }
}
