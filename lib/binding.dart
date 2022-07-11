import 'package:get/get.dart';
import 'package:tina/controller/auth/signup_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix:true);
  }
}
