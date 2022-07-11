// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  late String verfiyCode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AappRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
