import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterCubit(), child: const _CubitCounterView());
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();
  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title:  Text('Counter Screen ${counterState.transactionCount}'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text(
              'Counter value ${state.counter}',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {},
            child: const Text('+3'),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {},
            child: const Text('+2'),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {},
            child: const Text('+1'),
          ),
        ],
      ),
    );
  }
}
