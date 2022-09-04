import 'package:get/get.dart';
import 'package:tina/controller/auth/signup_controller.dart';
import 'package:tina/core/classes/crud.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }
}
