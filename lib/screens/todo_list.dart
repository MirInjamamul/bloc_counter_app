import 'package:bloc_counter/cubit/todo_cubit.dart';
import 'package:bloc_counter/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart%20';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List')
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos){
          return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index){
                final todo = todos[index];

                return ListTile(
                  title: Text(todo.name),
                );
              }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add_todo_route',
        onPressed: (){
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
    );
  }
}
