import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'todo/todo_list.controller.dart';
import 'todo/todo_list.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/todos',
      getPages: [
        GetPage(
            name: '/todos',
            page: () => const TodoListPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut<TodoListController>(
                () => TodoListController(),
              );
            })),
        // GetPage(name: '/todos/new', page: () => const TodoDetailPage()),
        // GetPage(name: '/todos/:id', page: () => const TodoDetailPage()),
      ],
    );
  }
}
