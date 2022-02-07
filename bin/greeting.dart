void main() {
  // Código principal
  saudacoes('Nathan', visitante: 'Leandro', corpo: funcao);
  String problema = gravidade(5) ?? 'Não informado';
  print('A gravidade do seu problema é: $problema');
}

void funcao(int i) {
  for(int j = 0; j < i; j++) {
    print('Olá $j');
  }
}

void saudacoes( // Função
  String nome, {
  bool mostrarHora = true,
  String? visitante = 'Não Informado', // Variável Nullable
  required Function(int) corpo,
  // String problema = gravidade(5) ?? 'Não informado', /// BUG
}) {

  corpo(15);
  print('Olá de ${nome.toUpperCase ()}');
  if(visitante != null) {
  // String v = visitante ?? 'Não Informado'; // Null Aware (caso seja valor null será substituido pelo valor padrão)
  print('Bem-Vindo ${visitante.toUpperCase()}');
    }
  if (mostrarHora) {
   print('O horário é: ${hora()}');
  }
}

String? gravidade(int x) {
  if(x > 8) {
    return 'Grave';
  }
  else {
    return 'Leve';
  }
}

String hora() {
  DateTime hora = DateTime.now();
  return hora.toString();
}
