void main() {
  // Código principal
  saudacoes('Nathan'/*, visitante: 'Leandro'*/);
}

void saudacoes( // Função
  String nome, {
  bool mostrarHora = true,
  String? visitante, // Variável Nullable
}) {
  print('Olá de ${nome.toUpperCase ()}');
  // if(visitante != null) {
  String v = visitante ?? 'Não Informado'; // Null Aware (caso seja valor null será substituido pelo valor padrão)
  print('Bem-Vindo ${v.toUpperCase()}');
    // }
  if (mostrarHora) {
    print('O horário é: ${hora()}');
  }
}

String hora() {
  DateTime hora = DateTime.now();
  return hora.toString();
}
