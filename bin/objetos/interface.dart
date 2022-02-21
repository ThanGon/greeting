void main() {
  RepositorioPessoas repo = RepositorioPessoasRemote();
  repo.ler(5);
  print(repo.ler(5));
}

abstract class RepositorioPessoas {
  void adicionar(String nome);
  void apagar(int i);
  String ler(int i);
}
class RepositorioPessoasLocal implements RepositorioPessoas{
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return 'Nathan';
  }

}

class RepositorioPessoasRemote implements RepositorioPessoas{
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return 'Gonçalves';
  }
}