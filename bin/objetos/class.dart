void main() {
//Classe Objeto    Classe Atributos - definidos na classe por fora
  Pessoa pessoa1 = Pessoa(nome: 'Nathan', idade: 18, casado: false);
  print(pessoa1.aniversario());
  pessoa1.dinheiro = 1000;
  print(pessoa1.dinheiro);

  /*double? dinheirocerto = pessoa1.dinheiro; // Forma de garantir que em nenhuma checagem terá retorno nulo ao usar uma variável auxiliar
  if(dinheirocerto != null) {
    print(dinheirocerto);
  }*/

  Pessoa pessoa2 = Pessoa(nome: 'Leandro', idade: 30, casado: true);
  print(pessoa2.dinheiro);

  print(pessoa2.temperatura); // Modificador Late
  print(pessoa2.temperatura);

  Pessoa? pessoa3;
  print(pessoa3?.nome); // Operador ? checa nulidade
  print(pessoa3?.idade);

  Pessoa pessoa4 = pessoa2;
  print(pessoa4.nome);
  print(pessoa4.dinheiro);

  pessoa2.dinheiro += 10;
  pessoa2.dinheiro += 10;

  print(pessoa4.dinheiro);

  print(Pessoa.atributo);
}

class Pessoa {

  Pessoa({required this.nome, required this.idade, required this.casado}) {
    print('O usuário é reconhecido como $nome tem $idade anos e se encontra $casado');
  }

  String nome = 'Nathan';
  int idade;
  bool casado;
  
  double _dinheiro = 0;

  String aniversario() {
    print('Parabéns! $nome');
    
    idade++;
    
    return 'Você agora tem $idade anos';
  }

  set dinheiro(double valor) {
    print('Modificando dinheiro do $nome');
    _dinheiro = valor;
  }

  double get dinheiro {
    print ('Lendo dinheiro do $nome');
    return _dinheiro;
  }


  static String atributo = 'Nada para ver aqui'; // Modificador Static faz com que chame na classe ao invés do objeto
  /// Usar modificadores static para poder padronizar um valor

  late double temperatura = medirTemperatura(); // Usando modificador late para carregar depois o código recomendável usar de variável stática

  double medirTemperatura() {
    print('Mediu a temperatura');
    return 37.0;
  }
}