import 'package:get/get.dart';

validInput(String value, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(value)) {
      return "not valid username".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(value)) {
      return "not valid Email".tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(value)) {
      return "not valid phone number".tr;
    }
  }
  if (value.isEmpty) {
    return "can't be Empty".tr;
  }
  if (value.length < min) {
    return "can't be less than $min".tr;
  }

  if (value.length > max) {
    return "can't be more than $max".tr;
  }
}
