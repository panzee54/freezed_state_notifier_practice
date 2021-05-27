// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoState _$_$_TodoStateFromJson(Map<String, dynamic> json) {
  return _$_TodoState(
    todoList: (json['todoList'] as List<dynamic>?)
            ?.map((e) => TodoItemState.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_TodoStateToJson(_$_TodoState instance) =>
    <String, dynamic>{
      'todoList': instance.todoList,
    };
