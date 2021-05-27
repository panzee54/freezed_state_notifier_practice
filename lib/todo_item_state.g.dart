// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoItemState _$_$_TodoItemStateFromJson(Map<String, dynamic> json) {
  return _$_TodoItemState(
    id: json['id'] as int,
    isChecked: json['isChecked'] as bool? ?? false,
    body: json['body'] as String?,
  );
}

Map<String, dynamic> _$_$_TodoItemStateToJson(_$_TodoItemState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isChecked': instance.isChecked,
      'body': instance.body,
    };
