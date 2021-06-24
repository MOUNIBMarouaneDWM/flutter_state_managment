import 'package:flutter/cupertino.dart';

class CounterState extends ChangeNotifier {

  int _counterd=0;
  int get counterd => _counterd;
  set counterd(int value){
    _counterd=value;
  }

  void incrementer(){
    ++_counterd;
    notifyListeners();
  }
  void decrementer(){
    --_counterd;
    notifyListeners();

  }

}