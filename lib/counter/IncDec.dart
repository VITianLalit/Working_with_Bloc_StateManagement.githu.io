import 'package:bloc_st_mn/bloc/counter_bloc.dart';
import 'package:bloc_st_mn/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDec extends StatefulWidget {
  const IncDec({super.key});

  @override
  State<IncDec> createState() => _IncDecState();
}

class _IncDecState extends State<IncDec> {
  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            // counterCubit.increment();
            counterBloc.add(CounterIncremented());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            // counterCubit.decrement();
            counterBloc.add(CounterDecremented());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.minimize),
        ),
      ],
    );
  }
}
