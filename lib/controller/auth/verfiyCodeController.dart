// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:tina/core/constant/appRoute.dart';

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
