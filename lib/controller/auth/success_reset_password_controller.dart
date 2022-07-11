import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AappRoute.login);
  }
}
