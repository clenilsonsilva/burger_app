Map itemscard(String nome, String imagem, num valor) {
  return {'nome': nome, 'imagem': imagem, 'valor': valor};
}

List list = [];
List lista(String nome, String imagem, num valor) {
  list.add({'nome': nome, 'imagem': imagem, 'valor': valor});
  return list;
}
List listar() {
  return list;
}

