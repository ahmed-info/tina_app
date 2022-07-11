import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AappRoute.sucessResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
