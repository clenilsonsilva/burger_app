import 'package:flutter/material.dart';

//List tem as informacoes dos produtos adicionados ao carrinho
List list = [];
void listaaddvoid(
    String nome, String imagem, num valor, ValueNotifier<int> notifier) {
  //adiciona infos a lista
  list.add(
      {'nome': nome, 'imagem': imagem, 'valor': valor, 'notifier': notifier});
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

List listCadastro = [];
void listAddCadastroVoid(String nome, String sobrenome, String dataNascimento,
    String celular, String email, String cpf, String novaSenha) {
  //adiciona infos a lista
  listCadastro.add({
    'nome': nome,
    'sobrenome': sobrenome,
    'dataNascimento': dataNascimento,
    'celular': celular,
    'email': email,
    'cpf': cpf,
    'novaSenha': novaSenha
  });
}

final nome = TextEditingController();
final sobrenome = TextEditingController();
final nascimento = TextEditingController();
final celular = TextEditingController();
final email = TextEditingController();
final cpf = TextEditingController();
final novasenha = TextEditingController();
final box = ValueNotifier<bool>(false);

final cadastrar = ValueNotifier<bool>(nome.value.text.isNotEmpty &&
    sobrenome.value.text.isNotEmpty &&
    nascimento.value.text.isNotEmpty &&
    celular.value.text.isNotEmpty &&
    email.value.text.isNotEmpty &&
    cpf.value.text.isNotEmpty &&
    novasenha.value.text.isNotEmpty &&
    box.value == true);
