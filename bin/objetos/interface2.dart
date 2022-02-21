void main() {
  Valor frigobar = Geladeira();
  print(frigobar.preco());
}

class Geladeira implements Valor{
  @override
  double preco() {
    return 100;
  }

}

class Pessoa implements Movel {
  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  void tras() {
    // TODO: implement tras
  }

}

class Carro implements Movel, Valor {
  String? modelo;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  void tras() {
    // TODO: implement tras
  }

  @override
  double preco() {
    return 50000;
  }

}

abstract class Movel {
  void frente();
  void direita();
  void esquerda();
  void tras();
}

abstract class Valor {
  double preco();
}