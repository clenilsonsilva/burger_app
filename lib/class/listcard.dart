import 'package:flutter/material.dart';


List list = [];
void lista(String nome, String imagem, num valor) {
  list.add({'nome': nome, 'imagem': imagem, 'valor': valor});
}

List listar() {
  return list;
}

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
  for (var i = 0; i < test.length; i++) {
    subtotal = (notar()[i].value * test[i]) + subtotal;
  }
  return subtotal;
}

List fun(List teste) {
  List lista = [];
  for (var i = 0; i < teste.length; i++) {
    lista.add(teste[i].value);
  }
  return lista;
}


// ValueNotifier<num> sumvaldef() {
//   return  ValueNotifier<num>(sumval);
// }




