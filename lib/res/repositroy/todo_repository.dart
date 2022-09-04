// ignore_for_file: avoid_print, unused_local_variable

import 'package:tina/res/models/todo.dart';
import 'package:tina/res/repositroy/repositroy.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoRepository implements Repository {
  String dataUrl = "https://jsonplaceholder.typicode.com";
  @override
  Future<String> deletedTodo(Todo todo) async {
    var url = Uri.parse('$dataUrl/todos/${todo.id}');
    var result = 'false';
    await http.delete(url).then((respone) {
      print(respone.body);
      return result = 'true';
    });
    return result;
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];
    //https://jsonplaceholder.typicode.com/todos
    var url = Uri.parse('$dataUrl/todos');
    var response = await http.get(url);
    var body = json.decode(response.body); //convert
    //parse
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  @override
  Future<String> patchCompleted(Todo todo) async {
    //https://jsonplaceholder.typicode.com/todos
    var url = Uri.parse('$dataUrl/todos/${todo.id}');
    String resData = "";
    await http.patch(url,
        body: {'completed': (!todo.completed!).toString()},
        headers: {'Authorization': 'your-token'}).then((response) {
      Map<String, dynamic> result = json.decode(response.body);
      print(result);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> putCompleted(Todo todo) async {
    //https://jsonplaceholder.typicode.com/todos
    var url = Uri.parse('$dataUrl/todos/${todo.id}');
    String resData = "";
    await http.put(url,
        body: {'completed': (!todo.completed!).toString()},
        headers: {'Authorization': 'your-token'}).then((response) {
      Map<String, dynamic> result = json.decode(response.body);
      print(result);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) async{
    print(todo);
        var url = Uri.parse('$dataUrl/todos/');
        var result = '';
        var response = await http.post(url);
        return result;

  }
}
