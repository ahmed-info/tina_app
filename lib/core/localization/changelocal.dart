import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tina/controller/fav_counter_controller.dart';
import 'package:tina/core/constant/app_theme.dart';
import 'package:tina/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;
    myServices.sharedPreferences.setString("lang", langCode);
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

//save shared prefrence
  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
//  String? sharedPrefFav = myServices.sharedPreferences
//         .getString(favController.favList.toString());

    super.onInit();
  }
}
