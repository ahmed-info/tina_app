// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:tina/core/constant/appColor.dart';
import 'package:tina/core/localization/changelocal.dart';
import 'package:tina/core/localization/translation.dart';
import 'package:tina/core/services/services.dart';
import 'package:tina/routes.dart';
import 'package:tina/testPackage.dart';
import 'package:tina/view/screens/myHome.dart';
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
      
      theme: ThemeData(
        backgroundColor: AppColor.black,
        
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
          headline1: const TextStyle(
              fontSize: 20, color: AppColor.black, fontWeight: FontWeight.bold),
          headline2: const TextStyle(
              fontSize: 26, color: AppColor.black, fontWeight: FontWeight.bold),
          headline3: const TextStyle(
              fontSize: 12, color: AppColor.black, fontWeight: FontWeight.bold),
          bodyText1: const TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17),
          bodyText2:
              const TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
        ),
        //primarySwatch: Colors.black,
      ),
      //home: MyHome(),
      //home: OnBoarding(),
      home: Language(),
      //home: Login(),
      //home: TestPackage(),
      initialRoute: '/',
      routes: routes,
      //CategoryDetails.screenRoute: (ctx) => CategoryDetails(),
    );
  }
}
