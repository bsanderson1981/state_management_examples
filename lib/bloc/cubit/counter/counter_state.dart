import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CounterCubitState extends Equatable {
  final int action;
  final int count;
  final int single;

  const CounterCubitState({this.action, this.count, this.single});

  @override
  List<Object> get props => [
        action,
        count,
        single,
      ];
}

class CounterCubitInitial extends CounterCubitState {
  const CounterCubitInitial({int action, int count, int single})
      : super(action: action, count: count, single: single);
}

class CounterCubitIncreased extends CounterCubitState {
  const CounterCubitIncreased({int action, int count, int single})
      : super(action: action, count: count, single: single);
}

class CounterCubitDecreased extends CounterCubitState {
  const CounterCubitDecreased({int action, int count, int single})
      : super(action: action, count: count , single: single);
}

// Without Equitable tests will fail
// @immutable
// abstract class CounterCubitState {
//   final String action;
//   final int count;

//   const CounterCubitState({this.action, this.count});
// }

// class CounterCubitInitial extends CounterCubitState {
//   const CounterCubitInitial({String action, int count})
//       : super(action: action, count: count);
// }

// class CounterCubitIncreased extends CounterCubitState {
//   const CounterCubitIncreased({String action, int count})
//       : super(action: action, count: count);
// }

// class CounterCubitDecreased extends CounterCubitState {
//   const CounterCubitDecreased({String action, int count})
//       : super(action: action, count: count);
// }
