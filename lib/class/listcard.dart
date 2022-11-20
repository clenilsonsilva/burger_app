import 'package:flutter/material.dart';


List list = [];
void listaaddvoid(String nome, String imagem, num valor, ValueNotifier<int> notifier) {
  list.add({'nome': nome, 'imagem': imagem, 'valor': valor, 'notifier': notifier});
}
void listadelvoid(int pos) {
  list.isNotEmpty ? list.removeAt(pos) : null;
}
void listaddcount(int pos, int value) {
  list[pos]['notifier'].value = value;
}

List listreturn() {
  return list;
}

final currentselecteditemhome = ValueNotifier<int>(0);
final listreturnotifier = ValueNotifier<int>(listreturn().length);
final tabcadastro = ValueNotifier<int>(0);


List not = [];
List test = [];
void notifier(ValueNotifier<int> value, num valor) {
  not.add(value);
  test.add(valor);
}




List notar() {
  return not;
}

num total() {
  num subtotal = 0;
  for (var i = 0; i < list.length; i++) {
    subtotal = (list[i]['valor'] * list[i]['notifier'].value) + subtotal;
  }
  return subtotal;
}


