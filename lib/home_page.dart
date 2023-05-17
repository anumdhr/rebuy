import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc,int>(

      builder: (context,state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'myHeroTag',
                  child: Text('asdfghjkl'),
                ),
                Text(state.toString()),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                )
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'asd',
                onPressed: () {
                 context.read<CounterBloc>().increment();
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().decrement();
                },
                child: Icon(Icons.remove),
              )
            ],
          ),
        );
      }
    );
  }
}
