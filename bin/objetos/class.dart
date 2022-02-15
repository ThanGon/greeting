void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Nathan', idade: 18, casado: false);
  print(pessoa1.aniversario());
  pessoa1.dinheiro = 1000;
  print(pessoa1.dinheiro);
  Pessoa pessoa2 = Pessoa(nome: 'Leandro', idade: 30, casado: true);

}

class Pessoa {

  Pessoa({required this.nome, required this.idade, required this.casado}) {
    print('O usuário é reconhecido como $nome tem $idade anos e se encontra $casado');
  }

  String nome = 'Nathan';
  int idade;
  bool casado;
  
  double? _dinheiro;

  String aniversario() {
    print('Parabéns! $nome');
    
    idade++;
    
    return 'Você agora tem $idade anos';
  }

  set dinheiro(double? valor) {
    print('Modificando dinheiro do $nome');
    _dinheiro = valor;
  }

  double? get dinheiro {
    print ('Lendo dinheiro do $nome');
    return _dinheiro;
  }
}