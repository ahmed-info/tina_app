// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tina/controller/forgetpassword/reset_password_controller.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_img_asset.dart';
import 'package:tina/core/functions/valid_input.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder: (controller) {
        return controller.statusRequest == StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImgAsset.loading),
              )
            : Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formState,
                  child: ListView(
                    children: [
                      CustomTextTitleAuth(text: "New Password"),
                      SizedBox(height: 10),
                      CustomTextBodyAuth(text: 'Please Enter New Password'),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        obscureText: true,
                        myController: controller.password,
                        hinttext: "Enter Your Password",
                        icontext: "Password",
                        iconData: Icons.lock_clock_outlined,
                      ),
                      CustomTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 30, "password");
                          },
                          obscureText: true,
                          myController: controller.repassword,
                          hinttext: "Re Enter Your Password",
                          icontext: "Re Password",
                          iconData: Icons.lock_clock_outlined),
                      CustomButtonAuth(
                        text: "Save",
                        onPressed: () {
                          controller.goToSuccessResetPassword();
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
