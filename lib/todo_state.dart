// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:todo_practice/todo_item_state.dart';

part 'todo_state.freezed.dart';
part 'todo_state.g.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(<TodoItemState>[]) List<TodoItemState> todoList,
  }) = _TodoState;

  factory TodoState.fromJson(Map<String, dynamic> json) =>
      _$TodoStateFromJson(json);
}
