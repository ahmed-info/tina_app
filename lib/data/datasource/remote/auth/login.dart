import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(
    this.crud,
  );

  postData(String email, String password) async {
    var response = await crud.postData(AppLink.login, {
      "email": email,
      "password": password,
    });
    return response.fold((left) => left, (right) => right);
  }
}
