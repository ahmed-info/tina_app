// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/functions/handlingdatacontroller.dart';
import 'package:tina/data/datasource/remote/forgetpassword/resetpassword.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;

  late TextEditingController password;
  late TextEditingController repassword;

  String? email;

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "Warning", middleText: "Password Not Match");
    }
    
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      print("==================== controller  $response");
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          //data.addAll(response["data"]);
          Get.offNamed(AappRoute.sucessResetPassword);
        } else {
          Get.defaultDialog(
              title: "Warning".tr,
              middleText: "Username Or Password is Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }else{
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
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
