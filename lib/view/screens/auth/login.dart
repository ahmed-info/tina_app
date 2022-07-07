// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/loginController.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/appRoute.dart';
import 'package:tina/core/functions/alertExitApp.dart';
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
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              LogoAuth(),
              CustomTextTitleAuth(text: "Welcome Back".tr),
              SizedBox(height: 10),
              CustomTextBodyAuth(
                  text:
                      'Sign In With Your Email And Password OR Continue With Social Media'),
              SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                  myController: controller.email,
                  hinttext: "Enter Your Email".tr,
                  icontext: "Email".tr,
                  iconData: Icons.email_outlined),
              CustomTextFormAuth(
                obscureText: true,
                myController: controller.password,
                hinttext: "Enter Your Password".tr,
                icontext: "Password".tr,
                iconData: Icons.lock_outline,
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
                onPressed: () {},
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
      ),
    );
  }
}
