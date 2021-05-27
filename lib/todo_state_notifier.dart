// Package imports:
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import 'package:todo_practice/todo_item_state.dart';
import 'package:todo_practice/todo_state.dart';

class TodoStateNotifier extends StateNotifier<TodoState> {
  TodoStateNotifier() : super(const TodoState());

  void createTodo(String? body) {
    final today = DateTime.now();
    final newId = today.year +
        today.month +
        today.day +
        today.hour +
        today.minute +
        today.microsecond;
    final newTodoList = [
      ...state.todoList,
      TodoItemState(id: newId, body: body)
    ];
    state = state.copyWith(todoList: newTodoList);
  }

  void deleteTodo(int index) {
    final selectedTodo = state.todoList[index];
    final newTodoList =
        state.todoList.where((todo) => todo.id != selectedTodo.id).toList();
    state = state.copyWith(todoList: newTodoList);
  }

  void switchChecked(int index) {
    final selectedTodoId = state.todoList[index].id;
    final isChecked = !state.todoList[index].isChecked;
    final newTodoList = state.todoList
        .map((todo) => todo.id == selectedTodoId
            ? TodoItemState(
                id: selectedTodoId,
                isChecked: isChecked,
                body: todo.body,
              )
            : todo)
        .toList();
    state = state.copyWith(todoList: newTodoList);
  }
}
