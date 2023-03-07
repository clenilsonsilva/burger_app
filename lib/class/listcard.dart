import 'package:flutter/material.dart';

import 'notifier.dart';

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
final cadastrado = ValueNotifier<bool>(false);
final nomeCartao = TextEditingController();
final validade = TextEditingController();
final numeroCartao = TextEditingController();
final cvv = TextEditingController();
final cpfCartao = TextEditingController();

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

List listCadastro = [
  {
    'nome': 'clenilson',
    'sobrenome': 'silva',
    'dataNascimento': '23/04/2001',
    'celular': '(93) 98807-8248',
    'email': 'ifpa@gmail.com',
    'cpf': '037.341.092-13',
    'novaSenha': '123456'
  }
];
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

List listCadastroReturn() {
  return listCadastro;
}

List listEmailReturn() {
  List emaill = [];
  for (var i = 0; i < listCadastroReturn().length; i++) {
    emaill.add(listCadastroReturn()[i]['email']);
  }
  return emaill;
}

final nome = TextEditingController();
final sobrenome = TextEditingController();
final nascimento = TextEditingController();
final celular = TextEditingController();
final email = TextEditingController();
final cpf = TextEditingController();
final novasenha = TextEditingController();
final box = ValueNotifier<bool>(false);

final ativar = Activator(listc: [
  nome,
  sobrenome,
  nascimento,
  celular,
  email,
  cpf,
  novasenha,
], list: [
  box
]);

bool data(String valor) {
  valor = valor.replaceAll('/', '');
  num a = num.parse(valor);
  String b = a.toString();
  bool somam = false, somad = false, somaa = false;
  int soma = 0;
  if (b.length == 8) {
    somad = (int.parse(b[0]) * 10 + int.parse(b[1])) > 0 &&
        (int.parse(b[0]) * 10 + int.parse(b[1])) <= 30;
    somam = (int.parse(b[2]) * 10 + int.parse(b[3])) > 0 &&
        (int.parse(b[2]) * 10 + int.parse(b[3])) <= 12;
    soma = int.parse([b[4], b[5], b[6], b[7]].join('').toString());
    somaa = soma > 1902;
  } else if (b.length == 7) {
    somad = int.parse(b[0]) > 0;
    somam = (int.parse(b[1]) * 10 + int.parse(b[2])) > 0 &&
        (int.parse(b[2]) * 10 + int.parse(b[2])) <= 12;
    soma = int.parse([b[3], b[4], b[5], b[6]].join('').toString());
    somaa = soma > 1902;
  } else {
    return false;
  }
  return somad == true && somam == true && somaa == true;
}

bool checkEmail(String valor) {
  if (listEmailReturn().isNotEmpty) {
    if (listEmailReturn().contains(valor)) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool checkLogin(String emaill, String senha) {
  if (listEmailReturn().isNotEmpty) {
    for (var i = 0; i < listCadastroReturn().length; i++) {
      if (emaill == (listCadastroReturn()[i]['email']) &&
          senha == (listCadastroReturn()[i]['novaSenha'])) {
        return true;
      }
    }
    return false;
  } else {
    return false;
  }
}
