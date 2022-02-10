void main() {
  print(nome());

  List<String> nomes = [
    'Nathan',
    'Gonçalves',
  ];

  List<int> inteiros = [ // List <Tipo de variaveis> 
    10,
    15,
    20,
  ];

  inteiros.add(25); // Uso de método
  List<int> maisInteiros = [
    100,
    200,
    300,

  ];
  inteiros.addAll(maisInteiros); // Uso de métodos para listas
  inteiros.insert(0, 5);
  print(nomes);
  print(inteiros);
  print(inteiros.contains(88));
  print(inteiros.indexOf(10));
  print(inteiros.remove(300));
  print(inteiros.removeAt(2));

  print(inteiros);
  inteiros.shuffle();
  print(inteiros);

  listagem();

  List<int> multiplicar =  List.generate(10, (i) => i * 10); // Gerar lista via multiplicação dos elementos
  print(multiplicar);

  print(multiplicar.any((i) => i * 5 == 50));

  print(multiplicar.where((i) => i * 5 == 50));
}

// int indice(int q) {
  // return q * 5;
// }

String nome() {
  String name = 'Nathan';
  return name.toString();
}

void listagem(){ 
  List<String> pessoas = [
    'Roberto',
    'Marcelo',
    'Flavia',
  ];

  for (String pessoa in pessoas) { // Formatar lista
    print(pessoa.toUpperCase());
  }

  for (int i = 0; i < pessoas.length; i++) { // Outra forma de formatar
    print(pessoas[i].toUpperCase());
  }
}