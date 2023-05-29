import 'package:get/get.dart';
import 'todo.model.dart';
import 'todo.service.dart';


class TodoListController extends GetxController {
  static TodoListController to = Get.find();
  var todos = <Todo>[].obs;

  final todoService = TodoService();

  @override
  void onInit() {
    todoService.getTodos().then((todos) => {
      if(todos.isNotEmpty) {
        this.todos(todos)
      }
    });
    super.onInit();
  }

}