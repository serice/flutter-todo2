import 'package:get/get.dart';
import 'todo.model.dart';
import 'todo.service.dart';


class TodoListController extends GetxController {
  static TodoListController to = Get.find();
  var todos = <Todo>[].obs;

  final todoService = TodoService();

  @override
  Future<void> onInit() async {
    todos(await todoService.getTodos());
    super.onInit();
  }

}