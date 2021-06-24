import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);


  void incrementer(){
    emit(state+1);

  }
  void decrementer(){
    emit(state-1);
 

  }
}