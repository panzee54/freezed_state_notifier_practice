// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoItemState _$TodoItemStateFromJson(Map<String, dynamic> json) {
  return _TodoItemState.fromJson(json);
}

/// @nodoc
class _$TodoItemStateTearOff {
  const _$TodoItemStateTearOff();

  _TodoItemState call({required int id, bool isChecked = false, String? body}) {
    return _TodoItemState(
      id: id,
      isChecked: isChecked,
      body: body,
    );
  }

  TodoItemState fromJson(Map<String, Object> json) {
    return TodoItemState.fromJson(json);
  }
}

/// @nodoc
const $TodoItemState = _$TodoItemStateTearOff();

/// @nodoc
mixin _$TodoItemState {
  int get id => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemStateCopyWith<TodoItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemStateCopyWith<$Res> {
  factory $TodoItemStateCopyWith(
          TodoItemState value, $Res Function(TodoItemState) then) =
      _$TodoItemStateCopyWithImpl<$Res>;
  $Res call({int id, bool isChecked, String? body});
}

/// @nodoc
class _$TodoItemStateCopyWithImpl<$Res>
    implements $TodoItemStateCopyWith<$Res> {
  _$TodoItemStateCopyWithImpl(this._value, this._then);

  final TodoItemState _value;
  // ignore: unused_field
  final $Res Function(TodoItemState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isChecked = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TodoItemStateCopyWith<$Res>
    implements $TodoItemStateCopyWith<$Res> {
  factory _$TodoItemStateCopyWith(
          _TodoItemState value, $Res Function(_TodoItemState) then) =
      __$TodoItemStateCopyWithImpl<$Res>;
  @override
  $Res call({int id, bool isChecked, String? body});
}

/// @nodoc
class __$TodoItemStateCopyWithImpl<$Res>
    extends _$TodoItemStateCopyWithImpl<$Res>
    implements _$TodoItemStateCopyWith<$Res> {
  __$TodoItemStateCopyWithImpl(
      _TodoItemState _value, $Res Function(_TodoItemState) _then)
      : super(_value, (v) => _then(v as _TodoItemState));

  @override
  _TodoItemState get _value => super._value as _TodoItemState;

  @override
  $Res call({
    Object? id = freezed,
    Object? isChecked = freezed,
    Object? body = freezed,
  }) {
    return _then(_TodoItemState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItemState with DiagnosticableTreeMixin implements _TodoItemState {
  const _$_TodoItemState({required this.id, this.isChecked = false, this.body});

  factory _$_TodoItemState.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoItemStateFromJson(json);

  @override
  final int id;
  @JsonKey(defaultValue: false)
  @override
  final bool isChecked;
  @override
  final String? body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoItemState(id: $id, isChecked: $isChecked, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoItemState'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItemState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isChecked) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$TodoItemStateCopyWith<_TodoItemState> get copyWith =>
      __$TodoItemStateCopyWithImpl<_TodoItemState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoItemStateToJson(this);
  }
}

abstract class _TodoItemState implements TodoItemState {
  const factory _TodoItemState(
      {required int id, bool isChecked, String? body}) = _$_TodoItemState;

  factory _TodoItemState.fromJson(Map<String, dynamic> json) =
      _$_TodoItemState.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  bool get isChecked => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoItemStateCopyWith<_TodoItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
