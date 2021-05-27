// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_state.freezed.dart';
part 'todo_item_state.g.dart';

@freezed
abstract class TodoItemState with _$TodoItemState {
  const factory TodoItemState({
    required int id,
    @Default(false) bool isChecked,
    String? body,
  }) = _TodoItemState;

  factory TodoItemState.fromJson(Map<String, dynamic> json) =>
      _$TodoItemStateFromJson(json);
}
