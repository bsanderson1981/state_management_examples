import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_cubit.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_state.dart';

void main() {
  group('CounterCubit', () {
    blocTest(
      'emits [] when nothing is called',
      build: () => CounterCubit(),
      expect: [],
    );

    blocTest(
      'emits [1] when increment is called',
      build: () => CounterCubit(),
      act: (bloc) => bloc.increment(),
      expect: [CounterCubitIncreased(dozcount: 'Increment', singcount: 1)],
    );

    blocTest(
      'Sequence of states',
      build: () => CounterCubit(),
      act: (bloc) => bloc
        ..increment()
        ..increment()
        ..decrement(),
      expect: [
        CounterCubitIncreased(dozcount: 'Increment', singcount: 1),
        CounterCubitIncreased(dozcount: 'Increment', singcount: 2),
        CounterCubitDecreased(action: 'Decrement', count: 1),
      ],
    );
  });
}
