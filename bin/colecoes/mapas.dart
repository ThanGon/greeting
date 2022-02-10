void main() {
  Map<int, String> ddds = {
    21:'Rio de Janeiro',
    11:'São Paulo',
  };

  print(ddds[11]);
  
  ddds[5] = 'Pará'; // Adicionar valor ao mapa

  print(ddds.values); // Values seria o valor que dá significado
  print(ddds.keys); // Keys o valor que é adcionado o significado

  ddds.forEach((key, value) { // Para cada Key e Valor será feito tal comando
    print('Chave: $key Valor: $value');
  });

  ddds.removeWhere((key, value) => key < 21);
  print(ddds);
}
