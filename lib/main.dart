// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:tina/binding.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/core/localization/changelocal.dart';
import 'package:tina/core/localization/translation.dart';
import 'package:tina/core/services/services.dart';
import 'package:tina/routes.dart';
import 'package:tina/testPackage.dart';
import 'package:tina/view/screens/my_home.dart';
import 'package:get/get.dart';

//import 'package:tina/view/screens/auth/login.dart';
//import 'package:tina/view/screens/categoryDetails.dart';
import 'package:tina/view/screens/language.dart';
import 'package:tina/view/screens/onboarding.dart';

//import 'dart:ui';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),

      debugShowCheckedModeBanner: false,
      title: 'Tina Shop',
      locale: controller.language,

      theme: controller.appTheme,
      initialRoute: '/',
      initialBinding: MyBinding(),
      //routes: routes,
      getPages: routes,
      //CategoryDetails.screenRoute: (ctx) => CategoryDetails(),
    );
  }
}
