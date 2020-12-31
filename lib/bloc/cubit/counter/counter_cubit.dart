import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_example/bloc/cubit/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitInitial(action: 0, count: 0, single: 0));

  void increment() => emit(CounterCubitIncreased(
      action: (state.count ~/ 13), count: state.count + 1,single: (state.count %13)));
  void decrement() =>
      emit(CounterCubitDecreased(action:(state.count ~/ 13), count: state.count - 1, single: (state.count %13)));
}
