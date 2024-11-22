import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ledger/modules/counter/bloc/counter_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ledger'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text('$count'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => context.read<CounterCubit>().decrement(),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => context.read<CounterCubit>().increment(),
                    ),
                  ],
                ),
              ]);
        },
      ),
    );
  }
}
