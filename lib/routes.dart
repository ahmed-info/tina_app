import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:tina/core/constant/appRoute.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/data/model/subCategoryModel.dart';
import 'package:tina/view/myWidget/category/customCategoryItem.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/favorite.dart';
import 'package:tina/view/screens/language.dart';
import 'package:tina/view/screens/product/Products.dart';
import 'package:tina/view/screens/auth/checkEmail.dart';
import 'package:tina/view/screens/auth/forgetPassword.dart';
import 'package:tina/view/screens/auth/login.dart';
import 'package:tina/view/screens/auth/resetPassword.dart';
import 'package:tina/view/screens/auth/signUp.dart';
import 'package:tina/view/screens/auth/successResetPassword.dart';
import 'package:tina/view/screens/auth/successSignUp.dart';
import 'package:tina/view/screens/auth/verfiyCode.dart';
import 'package:tina/view/screens/categoryDetails.dart';
import 'package:tina/view/screens/myHome.dart';
import 'package:tina/view/screens/notification.dart';
import 'package:tina/view/screens/onboarding.dart';
import 'package:tina/view/screens/search.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AappRoute.mynotifcation: (context) => const MyNotification(),
  AappRoute.search: (context) => const Search(),
  AappRoute.categoryDetails: (context) => CategoryDetails(),
  AappRoute.home: (context) => MyHome(),
  AappRoute.language: (context) => const Language(),
  AappRoute.categories: (context) => Categories(
        index: 0,
        myName: "",
      ),
  //Auth
  AappRoute.login: (context) => const Login(),
  AappRoute.signUp: (context) => const SignUp(),
  AappRoute.forgetPassword: (context) => const ForgetPassword(),
  AappRoute.verfiyCode: (context) => const VerfiyCode(),
  AappRoute.resetPassword: (context) => const ResetPassword(),
  AappRoute.successSignUp: (context) => const SuccessSignUp(),
  AappRoute.sucessResetPassword: (context) => const SuccessResetPassword(),
  AappRoute.favorite: (context) => const Favorite(),
  AappRoute.checkEmail: (context) => const CheckEmail(),
//onboarding
  AappRoute.onBoarding: (context) => const OnBoarding(),
  //product
  AappRoute.products: (context) => Products(
        num: 0,
        productName: subCategoryList[indexProduct!].title,
      ),
};
