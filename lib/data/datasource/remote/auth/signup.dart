import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(
    this.crud,
  );

  postData(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((left) => left, (right) => right);
  }
}
