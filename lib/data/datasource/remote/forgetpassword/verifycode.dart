import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class VerifyCodePasswordData {
  Crud crud;
  VerifyCodePasswordData(
    this.crud,
  );

  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycodeForgetPassword, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((left) => left, (right) => right);
  }
}
