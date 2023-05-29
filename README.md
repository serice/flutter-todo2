# TODO

todo api : https://github.com/Stella-Park/java-api/tree/feature/todo-api

## Getting Started

```
flutter create todo

dart pub add get http json_annotation
dart pub add json_serializable build_runner --dev
```

## Structure

```
- lib
  ㄴ config
    ㄴ todo.config.dart
  ㄴ todo
    ㄴ todo.model.dart
    ㄴ todo.model.g.dart
    ㄴ todo.service.dart
    ㄴ todo_detail.controller.dart
    ㄴ todo_detail.page.dart
    ㄴ todo_list.controller.dart
    ㄴ todo_list.page.dart
  ㄴ main.dart
```

## Reference

https://pub.dev/packages/http

https://pub.dev/packages/json_serializable
- dart run build_runner build

utf8.decode
