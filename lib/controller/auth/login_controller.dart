import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isHidePassword = true;
  @override
  showPassword() {
    isHidePassword = isHidePassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AappRoute.search);
    } else {
      Get.toNamed(AappRoute.favorite);
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AappRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AappRoute.forgetPassword);
  }
}
