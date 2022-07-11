// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:tina/controller/auth/verfiy_code_signup_controller.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/view/myWidget/auth/customTextBodyAuth.dart';
import 'package:tina/view/myWidget/auth/customTextTitleAuth.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerfiyCodeSignUpControllerImp controller = Get.put(VerfiyCodeSignUpControllerImp());

    return Scaffold(
      //drawer: Drawer(),
      appBar: AppBar(
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Verification Code',
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
            CustomTextTitleAuth(text: "Check Code"),
            SizedBox(height: 10),
            CustomTextBodyAuth(
                text:
                    'Please Enter The Digit Code Sent To ahmed.razzaq.yahya@gmail.com'),
            SizedBox(
              height: 15,
            ),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
