
// ignore_for_file: unnecessary_overrides, file_names

import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  late String verfiyCode;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AappRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
