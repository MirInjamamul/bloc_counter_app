import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/cubit/counter_cubit.dart';
import 'package:bloc_counter/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {

    final counterBloc =  BlocProvider.of<CounterBloc>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterBloc, int>(
                builder: (BuildContext context, int counter) =>Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'next_tag',
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: Icon(Icons.navigate_next),
      ),
      );
  }
}