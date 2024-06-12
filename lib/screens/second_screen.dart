
import 'package:bloc_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final counterCubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      floatingActionButton: Column( mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              counterCubit.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 4,),
          FloatingActionButton(
            onPressed: (){
              counterCubit.decrement();
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),

    );
  }
}
