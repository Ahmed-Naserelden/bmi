import 'package:bmi/layout/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitailStates());
  // CounterCubit(context) : super(CounterInitailStates());

  static CounterCubit get(context) => BlocProvider.of(context);
  // static CounterCubit getObj(context) => CounterCubit(context);
  int counter = 1;

  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }
  
}
