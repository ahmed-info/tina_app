import 'package:get/get.dart';
import 'package:tina/view/myWidget/product/custom_product_item.dart';
import 'package:tina/data/datasource/static/static.dart';
abstract class ProductMarkaController extends GetxController{
void passData();
}
class ProductMarkaControllerImp extends ProductMarkaController{
  var numOfID = 0;
  var markaList = <CustomProductItem>[];
  @override
  void passData() {
 var xx = productInkList;
  }
  @override
  void onInit() {
    
    super.onInit();
  }

}

