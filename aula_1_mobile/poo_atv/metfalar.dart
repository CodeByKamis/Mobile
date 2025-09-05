import 'dart:io';

class Animal {
  String raca;
  String cor;
  String nome;
  Animal({required this.raca, required this.cor, required this.nome});

  void falar() {
    print("");
  }

  String chamar() { //faz percorrer todas as informações do objeto
    return "$raca, $cor, $nome";
  }
}

class Cachorro extends Animal {
  Cachorro({required String raca, required String cor, required String nome})
      : super(raca: raca, cor: cor, nome: nome);

  @override
  void falar() {
    print("Auau");
  }
}

class Gato extends Animal {
  Gato({required String raca, required String cor, required String nome})
      : super(raca: raca, cor: cor, nome: nome);

  @override
  void falar() {
    print("Miau");
  }
}

class Papagaio extends Animal {
  Papagaio({required String raca, required String cor, required String nome})
      : super(raca: raca, cor: cor, nome: nome);

  @override
  void falar() {
    print("OIII");
  }
}

void main() {
  List<Animal> animais = [
    Cachorro(raca: "Pinscher", cor: "Marrom", nome: "Belinha"),
    Gato(raca: "Siamês", cor: "Branco", nome: "Laila"),
    Papagaio(raca: "Amazonas", cor: "Verde", nome: "Caco"),
  ];

  for (var animal in animais) {
    stdout.write("${animal.nome}: "); //kamila lembra de usar o stdout.write quando quiser que as coisas de baixo tbm fiquem na mesma linha que a de cima :P
    animal.falar();
  }
}
