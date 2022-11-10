import 'package:flutter/material.dart';

class Counter extends ValueNotifier<int>{
  Counter() : super(2);


}




int counterplus(int value) {
  if (value+1<=10) {
  return value+1;
  }
  else {
    return 10;
  }
}

int counterminus(int value) {
  if (value-1>0) {
  return value-1;
  }
  else{
    return 1;
  }
}