import 'package:http/http.dart';

import 'dart:convert';

class Cep {
  final String cep;
  final String uf;
  final String cidade;
  final String bairro;
  final String logradouro;
  Cep({
    required this.cep,
    required this.uf,
    required this.cidade,
    required this.bairro,
    required this.logradouro,
  });

  factory Cep.fromJson(String json) {
    final map = jsonDecode(json);
    return Cep(
      cep: map['cep'],
      uf: map['uf'],
      cidade: map['cidade'],
      bairro: map['bairro'],
      logradouro: map['logradouro'],
    );
  }

  @override
  String toString() {
    return '$logradouro\n$bairro\n$cidade-$uf\n$cep';
  }
}

Future consultar(String cep) async {
  if (cep.isEmpty) {
    throw ('Envia o CEP seu animal!');
  }
  if (validarCep(cep)) {
    try {
      final res = await get(Uri.http('5642-143-208-139-228.sa.ngrok.io', '/ws/$cep'));
      if (res.body == '[]') {
        return 'Nada encontrado, tente outro Cep';
      } else {
        return res.body;
        
      }
    } catch (e) {
      //  print(e);
      rethrow;
    }
  } else {
    throw ('CEP inválido');
  }
}

bool validarCep(String cep) {
  if (cep.length == 8) {
    for (var i = 0; i < cep.length; i++) {
      switch (cep[i]) {
        case '0':
          continue;
        case '1':
          continue;
        case '2':
          continue;
        case '3':
          continue;
        case '4':
          continue;
        case '5':
          continue;
        case '6':
          continue;
        case '7':
          continue;
        case '8':
          continue;
        case '9':
          continue;
        default:
          return false;
      }
    }
    return true;
  }
  return false;
}
