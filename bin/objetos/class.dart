void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Nathan', idade: 18, casado: false);
  print(pessoa1.aniversario());

  Pessoa pessoa2 = Pessoa(nome: 'Leandro', idade: 30, casado: true);

}

class Pessoa {

  Pessoa({required this.nome, required this.idade, required this.casado}) {
    print('O usuário é reconhecido como $nome tem $idade anos e se encontra $casado');
  }

  String nome = 'Nathan';
  int idade;
  bool casado;
  
  

  String aniversario() {
    print('Parabéns! $nome');
    
    idade++;
    
    return 'Você agora tem $idade anos';
  }
}