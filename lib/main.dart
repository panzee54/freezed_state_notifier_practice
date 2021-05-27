// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// Project imports:
import 'package:todo_practice/todo_state_notifier.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListWidget(),
    );
  }
}

class TodoListWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final todoList = useProvider(todoProvider).todoList;
    final todoStateNotifier = useProvider(todoProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: Column(
        children: [
          TextFormField(
            autofocus: true,
            onFieldSubmitted: todoStateNotifier.createTodo,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: IconButton(
                      onPressed: () => todoStateNotifier.switchChecked(index),
                      icon: Icon(
                        todoList[index].isChecked
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                      ),
                    ),
                    title: Text(todoList[index].body ?? 'Write todo!'),
                    trailing: IconButton(
                      onPressed: () => todoStateNotifier.deleteTodo(index),
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
