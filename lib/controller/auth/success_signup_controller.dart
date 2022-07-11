import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AappRoute.login);
  }
}
