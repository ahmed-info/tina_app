import 'package:tina/core/classes/crud.dart';
import 'package:tina/linkapi.dart';

class TestData {
  Crud crud;
  TestData(
    this.crud,
  );

  getData() async{
    var response = await crud.postData(AppLink.test, {});
    return response.fold((left) => left, (right) => right);
  }
}
