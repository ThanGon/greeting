void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.idade = 10;
  print(cachorro1.identificar());
  cachorro1.latir();

  Gato baguera = Gato();
  baguera.nome = 'Baguera';
  // print('Seu gato se chama ${baguera.nome}');
  baguera.arranhar();

  List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(baguera);

}

class Animal { // Superclass onde as outras class vão herdar
  // Animal({required this.nome, required this.idade});
  String nome = 'Não identificado';
  int? idade;

  String identificar() {
    return 'Nome do seu animal: $nome. Idade do seu animal: $idade';
  }

}

class Cachorro extends Animal{
  void latir() {
    print('Au au');
  }
}

class Gato extends Animal{
  void arranhar() { 
    print('Seu gato te arranhou');
  }
}