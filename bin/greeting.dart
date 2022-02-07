void main() {
  // Código principal
  saudacoes('Nathan', visitante: 'Leandro', corpo: funcao);
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

String hora() {
  DateTime hora = DateTime.now();
  return hora.toString();
}
