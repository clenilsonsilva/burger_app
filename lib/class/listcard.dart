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
// List listadel() {
//   return list;
// }

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

// List fun(List teste) {
//   List lista = [];
//   for (var i = 0; i < teste.length; i++) {
//     lista.add(teste[i].value);
//   }
//   return lista;
// }


// // ValueNotifier<num> sumvaldef() {
// //   return  ValueNotifier<num>(sumval);
// // }




