// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:todo_practice/todo_state.dart';
import 'package:todo_practice/todo_state_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TodoStateNotifier, TodoState>(
          create: (_) => TodoStateNotifier(),
        ),
      ],
      child: MaterialApp(
        home: TodoListWidget(),
      ),
    );
  }
}

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoList = context.watch<TodoState>().todoList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: Column(
        children: [
          TextFormField(
            autofocus: true,
            onFieldSubmitted: (text) =>
                context.read<TodoStateNotifier>().createTodo(text),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: IconButton(
                      onPressed: () => context
                          .read<TodoStateNotifier>()
                          .switchChecked(index),
                      icon: Icon(
                        todoList[index].isChecked
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                      ),
                    ),
                    title: Text(todoList[index].body ?? 'Write todo!'),
                    trailing: IconButton(
                      onPressed: () =>
                          context.read<TodoStateNotifier>().deleteTodo(index),
                      icon: const Icon(Icons.delete),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
