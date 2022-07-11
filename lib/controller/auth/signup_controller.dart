import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isHidePassword = true;
  showPassword() {
    isHidePassword = isHidePassword == true ? false : true;
    update();
  }

  @override
  signUp() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AappRoute.verfiyCodeSignUp);
      //Get.delete<SignUpControllerImp>();
    } else {
      Get.toNamed(AappRoute.favorite);
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AappRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
