// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_img_asset.dart';
import 'package:tina/core/functions/alert_exit_app.dart';
import 'package:tina/core/functions/valid_input.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextSign.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';
import 'package:tina/controller/auth/signup_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SignupControllerImp controller = Get.put(Sign);
    //Get.lazyPut(() => SignUpControllerImp());

    return Scaffold(
        //drawer: Drawer(),
        appBar: AppBar(
          foregroundColor: AppColor.primaryColor,
          centerTitle: true,
          title: Text('Sign Up'.tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller) => WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => controller.statusRequest ==
                      StatusRequest.loading
                  ? Center(
                      child: Lottie.asset(AppImgAsset.loading),
                    )
                  : Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          children: [
                            CustomTextTitleAuth(text: "Welcome Back".tr),
                            SizedBox(height: 10),
                            CustomTextBodyAuth(
                                text:
                                    'Sign Up With Your Email And Password OR With Social Media'
                                        .tr),
                            SizedBox(
                              height: 15,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 100, "username");
                              },
                              myController: controller.username,
                              iconData: Icons.person_outline,
                              hinttext: "Username".tr,
                              icontext: "Username".tr,
                            ),
                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 5, 100, "email");
                                },
                                myController: controller.email,
                                hinttext: "Enter Your Email".tr,
                                icontext: "Email".tr,
                                iconData: Icons.email_outlined),
                            CustomTextFormAuth(
                                isNumber: true,
                                valid: (val) {
                                  return validInput(val!, 7, 15, "phone");
                                },
                                myController: controller.phone,
                                hinttext: "Enter Your Phone".tr,
                                icontext: "Phone".tr,
                                iconData: Icons.phone_outlined),

                            CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 5, 30, "password");
                                },
                                obscureText: controller.isHidePassword,
                                onTapIcon: () {
                                  controller.showPassword();
                                },
                                myController: controller.password,
                                hinttext: "Enter Your Password".tr,
                                icontext: "Password".tr,
                                iconData: controller.isHidePassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),

                            CustomButtonAuth(
                              text: "Sign Up".tr,
                              onPressed: () {
                                controller.signUp();
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //////////test/////////////
                            CustomTextSign(
                                textOne: " Have an account ".tr,
                                textTwo: "Sign In".tr,
                                onTap: () {
                                  controller.goToSignIn();
                                }),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ));
  }
}
