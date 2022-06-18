// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
//import 'package:get/get_utils/get_utils.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/constant/appRoute.dart';
import 'package:tina/core/localization/changelocal.dart';
import 'package:tina/view/myWidget/language/customButtonLang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 20),
              CustomButtonLang(
                textButton: "Ar",
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed(AappRoute.onBoarding);
                },
              ),
              CustomButtonLang(
                textButton: "En",
                onPressed: () {
                  controller.changeLang("en");
                  Get.toNamed(AappRoute.onBoarding);
                },
              )
            ]),
      ),
    );
  }
}
