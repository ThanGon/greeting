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
}

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