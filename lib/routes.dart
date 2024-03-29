import 'package:get/get.dart';
import 'package:tina/controller/basket_counter_controller.dart';
import 'package:tina/controller/fav_counter_controller.dart';
import 'package:tina/core/constant/app_route.dart';
import 'package:tina/core/middleware/mymiddleware.dart';
import 'package:tina/data/datasource/static/static.dart';
import 'package:tina/testPackage.dart';
import 'package:tina/test_view.dart';
import 'package:tina/view/screens/auth/verfiy_code_signup.dart';
import 'package:tina/view/screens/cart_list_screen.dart';
import 'package:tina/view/screens/categories.dart';
import 'package:tina/view/screens/favorite.dart';
import 'package:tina/view/screens/language.dart';
import 'package:tina/view/screens/privacy_policy.dart';
import 'package:tina/view/screens/product/product_cart.dart';
import 'package:tina/view/screens/product/product_marka.dart';
import 'package:tina/view/screens/product/product_partner.dart';
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

FavCounterControllerImp favCounter = Get.put(FavCounterControllerImp());
BasketCounterControllerImp basketController =
    Get.put(BasketCounterControllerImp());
List<GetPage<dynamic>>? routes = [
  // GetPage(
  //     name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: "/", page: () => const SignUp()),
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
  GetPage(name: AappRoute.favorite, page: () => Favorite(favCounter.favList)),
  GetPage(name: AappRoute.privacyPolicy, page: () => const PrivacyPolicy()),
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
  GetPage(name: AappRoute.productCart, page: () => ProductCart()),
  GetPage(
      name: AappRoute.productPartner,
      page: () => ProductPartner(
            productName: "hameedoo",
            num: 3000,
          )),
  GetPage(
      name: AappRoute.productMarka,
      page: () => ProductMarka(
            productName: "hameed",
            num: Get.arguments['index'],
            //listOfProduct: Get.arguments['listOfProduct'],
            listOfProduct: productInkList,
          )),
  GetPage(
      name: AappRoute.cartListScreen,
      page: () => CartListScreen(basketController.basketList)),
];
