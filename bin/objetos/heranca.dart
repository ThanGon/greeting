void main() {
  Cachorro cachorro1 = Cachorro('Sparky', 10);
  print(cachorro1);
  cachorro1.latir();

  Gato gatinho = Gato('Pst Pst Pst', 16);
  print(gatinho);
  gatinho.arranhar();

  /*List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(gatinho);*/ 

  // print(cachorro1.hashCode); /  sempre herda as propriedades object por isso o método hashcode
}

abstract class Animal {   // Classe abstrata não pode ser usada como objeto
  // Superclass onde as outras class vão herdar
  Animal(this.nome, this.idade);
  String nome;
  int idade;

  /*String identificar() {        /// Comentado para remover redundância
    return 'Nome do seu animal: $nome. Idade do seu animal: $idade';
  }*/

  @override // Reescrita de método
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade); // Passar da classe super para a classe que herda
  void latir() {
    print('Au au');
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);
  void arranhar() {
    print('Seu gato te arranhou');
  }
}
