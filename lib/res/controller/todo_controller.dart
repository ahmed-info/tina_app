import 'package:tina/res/models/todo.dart';
import 'package:tina/res/repositroy/repositroy.dart';

class TodoController {
  final Repository _repository;
  TodoController(this._repository);
  //get
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  //patch
  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  //put
  Future<String> updatePutCompleted(Todo todo) async {
    return _repository.putCompleted(todo);
  }

  //delete
  Future<String> deletedTodo(Todo todo) async {
    return _repository.deletedTodo(todo);
  }
}
