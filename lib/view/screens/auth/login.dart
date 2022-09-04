// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:path/path.dart';
import 'package:tina/controller/auth/login_controller.dart';
import 'package:tina/core/classes/status_request.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/constant/app_img_asset.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/functions/alert_exit_app.dart';
import 'package:tina/core/functions/valid_input.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextSign.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';
import 'package:tina/view/myWidget/auth/logoAuth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Sign In'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(builder: (control) {
          return control.statusRequest == StatusRequest.loading
              ? Center(
                  child: Lottie.asset(AppImgAsset.loading),
                )
              : Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        LogoAuth(),
                        CustomTextTitleAuth(text: "Welcome Back".tr),
                        SizedBox(height: 10),
                        CustomTextBodyAuth(
                            text:
                                'Sign In With Your Email And Password OR With Social Media'
                                    .tr),
                        SizedBox(
                          height: 15,
                        ),
                        CustomTextFormAuth(
                            valid: (val) {
                              return validInput(val!, 5, 100, "email");
                            },
                            myController: controller.email,
                            hinttext: "Enter Your Email".tr,
                            icontext: "Email".tr,
                            iconData: Icons.email_outlined),
                        GetBuilder<LoginControllerImp>(
                          builder: (context) => CustomTextFormAuth(
                            valid: (val) {
                              return validInput(val!, 5, 30, "password");
                            },
                            myController: controller.password,
                            hinttext: "Enter Your Password".tr,
                            icontext: "Password".tr,
                            iconData: controller.isHidePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            obscureText: controller.isHidePassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.goToForgetPassword();
                          },
                          child: Text(
                            'Forget Password'.tr,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        CustomButtonAuth(
                          text: "Sign In".tr,
                          onPressed: () {
                            controller.login();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextSign(
                          textOne: "Dont have an account ? ".tr,
                          textTwo: "SignUp".tr,
                          onTap: () {
                            controller.goToSignUp();
                          },
                        )
                      ],
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
