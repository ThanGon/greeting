void main() {
  // Código principal
  saudacoes('Nathan', visitante: 'Leandro');
}

void saudacoes( // Função
  String nome, {
  bool mostrarHora = true,
  String? visitante, // Variável Nullable
}) {
  print('Olá de $nome');
  if(visitante != null) {
  print('Bem-Vindo $visitante');
    }
  if (mostrarHora) {
    print('O horário é: ${hora()}');
  }
}

String hora() {
  DateTime hora = DateTime.now();
  return hora.toString();
}
