import 'package:get/get.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/middleware/mymiddleware.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/view/screens/auth/verfiy_code_signup.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/favorite.dart';
import 'package:tina/view/screens/language.dart';
import 'package:tina/view/screens/product/products.dart';
import 'package:tina/view/screens/auth/forget_password.dart';
import 'package:tina/view/screens/auth/login.dart';
import 'package:tina/view/screens/auth/reset_password.dart';
import 'package:tina/view/screens/auth/signup.dart';
import 'package:tina/view/screens/auth/success_reset_password.dart';
import 'package:tina/view/screens/auth/success_signup.dart';
import 'package:tina/view/screens/auth/verfiy_code.dart';
import 'package:tina/view/screens/category_details.dart';
import 'package:tina/view/screens/my_home.dart';
import 'package:tina/view/screens/notification.dart';
import 'package:tina/view/screens/onboarding.dart';
import 'package:tina/view/screens/search.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AappRoute.login, page: () => const Login()),
  GetPage(name: AappRoute.signUp, page: () => const SignUp()),
  GetPage(name: AappRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AappRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(
      name: AappRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AappRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AappRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AappRoute.sucessResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AappRoute.favorite, page: () => const Favorite()),
  GetPage(name: AappRoute.mynotifcation, page: () => const MyNotification()),
  GetPage(name: AappRoute.search, page: () => const Search()),
  GetPage(name: AappRoute.categoryDetails, page: () => CategoryDetails()),
  GetPage(name: AappRoute.home, page: () => MyHome()),
  GetPage(name: AappRoute.language, page: () => const Language()),
  GetPage(name: AappRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AappRoute.categories, page: () => Categories(index: 0, myName: "")),
  GetPage(
      name: AappRoute.products,
      page: () =>
          Products(num: 0, productName: subCategoryList[indexProduct!].title)),
];

// Map<String, Widget Function(BuildContext)> routess = {
//   AappRoute.mynotifcation: (context) => const MyNotification(),
//   AappRoute.search: (context) => const Search(),
//   AappRoute.categoryDetails: (context) => CategoryDetails(),
//   AappRoute.home: (context) => MyHome(),
//   AappRoute.language: (context) => const Language(),
//   AappRoute.categories: (context) => Categories(
//         index: 0,
//         myName: "",
//       ),
//   //Auth
//   AappRoute.login: (context) => const Login(),
//   AappRoute.signUp: (context) => const SignUp(),
//   AappRoute.forgetPassword: (context) => const ForgetPassword(),
//   AappRoute.verfiyCode: (context) => const VerfiyCode(),
//   AappRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
//   AappRoute.resetPassword: (context) => const ResetPassword(),
//   AappRoute.successSignUp: (context) => const SuccessSignUp(),
//   AappRoute.sucessResetPassword: (context) => const SuccessResetPassword(),
//   AappRoute.favorite: (context) => const Favorite(),
// //onboarding
//   AappRoute.onBoarding: (context) => const OnBoarding(),
//   //product
//   AappRoute.products: (context) => Products(
//         num: 0,
//         productName: subCategoryList[indexProduct!].title,
//       ),
// };
