// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:get/get.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/functions/handlingdatacontroller.dart';
import 'package:tina/data/datasource/remote/forgetpassword/verifycode.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  VerifyCodePasswordData verifyCodePasswordData =
      VerifyCodePasswordData(Get.find());
  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodePasswordData.postData(email!, verifycode);
    print("============= controller Verify code $response");
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AappRoute.resetPassword, arguments: {
          "email": email
          });
      } else {
        Get.defaultDialog(
            title: "Warning".tr, middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}
