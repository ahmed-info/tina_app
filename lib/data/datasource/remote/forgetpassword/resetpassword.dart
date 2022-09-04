import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(
    this.crud,
  );

  postData(String email, String password) async {
    var response = await crud.postData(AppLink.resetpassword, {
      "email": email,
      "password": password,
    });
    return response.fold((left) => left, (right) => right);
  }
}
