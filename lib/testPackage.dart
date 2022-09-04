// ignore_for_file: prefer_const_constructors, file_names, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'core/functions/checkinternet.dart';

class TestPackage extends StatefulWidget {
  const TestPackage({Key? key}) : super(key: key);

  @override
  State<TestPackage> createState() => _TestPackageState();
}

class _TestPackageState extends State<TestPackage> {
  var res;
  intialdata() async{
    res = await checkInternet();
    print("=============Result================");
    print(res);
  }
  @override
  void initState() {
    intialdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Package')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
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
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
