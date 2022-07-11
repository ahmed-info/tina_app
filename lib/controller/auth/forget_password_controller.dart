
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AappRoute.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
