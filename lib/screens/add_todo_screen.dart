import 'package:bloc_counter/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart%20';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 8,),
            ElevatedButton(onPressed: (){
              BlocProvider.of<TodoCubit>(context).addTodo(todoTitleController.text.trim());
              todoTitleController.text = '';

              Navigator.of(context).pop();
            },
                child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}
