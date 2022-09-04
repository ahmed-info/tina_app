import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(
    this.crud,
  );

  postData(String email) async {
    var response = await crud.postData(AppLink.checkemail, {
      "email": email,
    });
    return response.fold((left) => left, (right) => right);
  }
}
