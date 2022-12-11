import 'package:flutter/material.dart';

//List tem as informacoes dos produtos adicionados ao carrinho
List list = [];
void listaaddvoid(String nome, String imagem, num valor, ValueNotifier<int> notifier) {
  //adiciona infos a lista
  list.add({'nome': nome, 'imagem': imagem, 'valor': valor, 'notifier': notifier});
}
void listadelvoid(int pos) {
  //deleta produtos da lista passando a posicao
  if (list.isNotEmpty) list.removeAt(pos);
}
void listaddcount(int pos, int value) {
  //passo a posicao e o valor e edito o valor do notifier passado
  list[pos]['notifier'].value = value;
}

List listreturn() {
  //retorna a lista
  return list;
}

//posicao das categorias por padrao 0
final currentselecteditemhome = ValueNotifier<int>(0);
//retorna o tamanho da lista
final listreturnotifier = ValueNotifier<int>(listreturn().length);
//tab do drawer my account
final tabcadastro = ValueNotifier<int>(0);

//retorna o subtotal dos produtos do carrinho
num total() {
  num subtotal = 0;
  for (var i = 0; i < list.length; i++) {
    //pega o valor da lista e multiplica pela quantiadade e soma com o proximo
    subtotal = (list[i]['valor'] * list[i]['notifier'].value) + subtotal;
  }
  return subtotal;
}

List listLogin = [];
void listAddLoginVoid(String email, String senha) {
  //adiciona infos a lista
  listLogin.add({'email': email, 'senha': senha});
}


