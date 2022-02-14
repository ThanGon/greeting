void main() {
  Pessoa pessoa1 = Pessoa();
  // pessoa1.nome = 'Gonçalves';
  print(pessoa1.nome);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Leandro";
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.casado);

  /// Pessoa pessoa3 = Pessoa(); 
  /// print(pessoa3.nome);
  
}

class Pessoa {
  String nome = 'Nathan';
  int? idade;
  bool? casado;

  void aniversario() {
    print('Parabéns! $nome');
    if(idade !=null) {
      idade = idade!+ 1;
    }
  }
}