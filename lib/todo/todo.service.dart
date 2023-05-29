import 'dart:convert';

import 'package:http/http.dart';
import '../config/todo.config.dart';
import 'todo.model.dart';

class TodoService {

  Future<List<Todo>> getTodos() async {
    var todos = <Todo>[];
    var res = await get(TodoConfig.apiUri.replace(path: '/api/todos'));
    for (var todo in jsonDecode(utf8.decode(res.bodyBytes))) {
      todos.add(Todo.fromJson(todo));
    }
    return todos;
  }
}
