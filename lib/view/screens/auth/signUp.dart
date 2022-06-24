// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/view/myWidget/auth/customButtonAuth.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextFormAuth.dart';
import 'package:tina/view/myWidget/auth/customTextSign.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';
import 'package:tina/view/myWidget/auth/logoAuth.dart';
import 'package:tina/controller/auth/signUpController.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SignupControllerImp controller = Get.put(Sign);
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "Welcome Back"),
            SizedBox(height: 10),
            CustomTextBodyAuth(
                text:
                    'Sign Up With Your Email And Password OR Continue With Social Media'),
            SizedBox(
              height: 15,
            ),
            CustomTextFormAuth(
              myController: controller.username,
              iconData: Icons.person_outline,
              hinttext: "Username",
              icontext: "Username",
            ),
            CustomTextFormAuth(
                myController: controller.email,
                hinttext: "Enter Your Email",
                icontext: "Email",
                iconData: Icons.email_outlined),
            CustomTextFormAuth(
                myController: controller.phone,
                hinttext: "Enter Your Phone",
                icontext: "Phone",
                iconData: Icons.phone_outlined),
            CustomTextFormAuth(
                myController: controller.password,
                hinttext: "Enter Your Password",
                icontext: "Password",
                iconData: Icons.lock_outline),

            CustomButtonAuth(
              text: "Sign Up",
              onPressed: () {
                controller.signUp();
              },
            ),
            SizedBox(
              height: 30,
            ),
            //////////test/////////////
            CustomTextSign(
                textOne: " Hava an account ",
                textTwo: "Sign In",
                onTap: () {
                  controller.goToSignIn();
                }),
          ],
        ),
      ),
    );
  }
}
