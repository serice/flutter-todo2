import 'package:json_annotation/json_annotation.dart';

part 'todo.model.g.dart';

@JsonSerializable()
class Todo {

  Todo({
    this.id,
    required this.title,
    required this.isCompleted,
  });

  int? id;
  String title;
  bool isCompleted;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);

}
