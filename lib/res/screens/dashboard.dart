// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:tina/core/constant/app_color.dart';
import 'package:tina/res/controller/todo_controller.dart';
import 'package:tina/res/models/todo.dart';
import 'package:tina/res/repositroy/todo_repository.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository());
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Page'),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('error'),
            );
          }
          return buildBodyContent(snapshot, todoController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Todo todo = Todo(userId: 3, title: 'simple post', completed: false);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  SafeArea buildBodyContent(
      AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
    return SafeArea(
      child: ListView.separated(
          itemBuilder: (context, index) {
            var todo = snapshot.data?[index];
            return Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Text('${todo?.id}')),
                    Expanded(flex: 3, child: Text('${todo?.title}')),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                onTap: () {
                                  todoController
                                      .updatePatchCompleted(todo!)
                                      .then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(microseconds: 1500),
                                        content: Text(value),
                                      ),
                                    );
                                  });
                                },
                                child:
                                    customButtonAction('Edit', Colors.orange)),
                            //make put call
                            InkWell(
                                onTap: () {
                                  todoController
                                      .updatePutCompleted(todo!)
                                      .then((value) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(microseconds: 1500),
                                        content: Text(value),
                                      ),
                                    );
                                  });
                                },
                                child: customButtonAction('Put', Colors.green)),
                            InkWell(
                                onTap: () {
                                  todoController
                                      .deletedTodo(todo!)
                                      .then((response) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(microseconds: 1500),
                                        content: Text(response),
                                      ),
                                    );
                                  });
                                },
                                child: customButtonAction('Del', Colors.red)),
                          ],
                        )),
                  ],
                ));
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 0.5,
              height: 0.5,
            );
          },
          itemCount: snapshot.data?.length ?? 0),
    );
  }

  Container customButtonAction(String text, Color color) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
