import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'todo_list.controller.dart';
import 'todo.model.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  final String title = 'Todo List';

  @override
  Widget build(BuildContext context) {
    final TodoListController todoListController = TodoListController.to;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Obx(() => DataTable(
            showCheckboxColumn: false,
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text('#', style: TextStyle(fontStyle: FontStyle.italic))
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text('TITLE', style: TextStyle(fontStyle: FontStyle.italic))
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text('DONE', style: TextStyle(fontStyle: FontStyle.italic)),
                ),
              ),
            ],
            rows: toDataTableDatasource(todoListController.todos),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: gotoTodoNewPage,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }

  List<DataRow> toDataTableDatasource(RxList<Todo> todos) {
    return todos.toList().map((e) => DataRow(
      onSelectChanged: (bool? selected) {
        if (selected!) {
          gotoTodoDetailPage(e);
        }
      },
      cells: <DataCell>[
        DataCell(Text(e.id!.toString())),
        DataCell(Text(e.title)),
        DataCell(Text(e.isCompleted ? 'Done' : 'Not yet')),
      ],
    )).toList();
  }

  void gotoTodoDetailPage(Todo todo) async {
    Get.toNamed('/todos/${todo.id}');
  }

  void gotoTodoNewPage() {
    Get.toNamed('/todos/new');
  }
}