import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'demo_event.dart';

part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  int cnt = 0;

  DemoBloc() : super(DemoInitial()) {
    on<DemoEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<InitEvent>((event, emit) {
      cnt = event.i;

      emit(InitialState(cnt));
    });

    on<IncrementEvent>((event, emit) {

      cnt++;
      emit(InitialState(cnt));
    });

    on<DecrementEvent>((event, emit) {

      cnt--;
      emit(InitialState(cnt));
    });
  }
}
