import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class VerfiyCodeSignUpData {
  Crud crud;
  VerfiyCodeSignUpData(
    this.crud,
  );

  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verfiyCodeSignUp, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((left) => left, (right) => right);
  }
}
