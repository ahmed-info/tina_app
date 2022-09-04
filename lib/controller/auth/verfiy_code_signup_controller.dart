// ignore_for_file: unnecessary_overrides, file_names, avoid_print

import 'package:get/get.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/functions/handlingdatacontroller.dart';
import 'package:tina/data/datasource/remote/auth/verfiycodesignup.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiycodesignup);
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());
  late String verfiyCode;
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verfiycodesignup) async{
    statusRequest = StatusRequest.loading;
      update();
      var response = await verfiyCodeSignUpData.postData(
          email!, verfiycodesignup);
      print("==================== controller $response");
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AappRoute.successSignUp);
        } else {
          Get.defaultDialog(
              title: "Warning".tr,
              middleText: "Verify Code Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    Get.offNamed(AappRoute.successSignUp);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
