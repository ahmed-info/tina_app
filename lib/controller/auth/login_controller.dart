// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/functions/handlingdatacontroller.dart';
import 'package:tina/data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isHidePassword = true;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  showPassword() {
    isHidePassword = isHidePassword == true ? false : true;
    update();
  }

  @override
  login() async{
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
           email.text, password.text);
      print("==================== controller  $response");
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          //data.addAll(response["data"]);
          Get.offNamed(AappRoute.home);
        } else {
          Get.defaultDialog(
              title: "Warning".tr,
              middleText: "Username Or Password is Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //Get.delete<SignUpControllerImp>();
    } else {
      //Get.toNamed(AappRoute.favorite);
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