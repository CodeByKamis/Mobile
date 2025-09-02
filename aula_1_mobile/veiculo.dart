import 'dart:io';
//usa polimorfismo quando precisamos reescrever a função mas manter a estrutura
class Veiculo {
  String modelo;
  String cor;
  String marca;

  Veiculo({required this.modelo, required this.cor, required this.marca});

  void mover(bool cnh) {
    if (cnh == true) {
      print("movendo o veículo");
    } else {
      print("você não pode dirigir");
    }
  }

  String toString(){ //faz retornar todos os dados do objeto no print
    return "$modelo, $cor, $marca";
  }
}

class Carro extends Veiculo {
  Carro({required String modelo, required String cor, required String marca,}) : super(cor: cor, marca: marca, modelo: modelo);

  @override
  void mover(bool cnh) {
    if (cnh == true) {
      print("Virando a chave");
      print("Engatar a marcha");
      print("Soltar o pé da embreagem");
      print("Acelerar");
    }else{
      print("Você não tem CNH");
    }

    @override //ele serve para reescrever as coisa
    String toString(){
      return "$modelo";
    }
  }
}

class Moto extends Veiculo {
  Moto({
    required String modelo, required String cor, required String marca}): super(cor: cor, marca: marca, modelo: modelo);

  @override
  void mover(bool cnh) {
    if (cnh == true) {
      print("Virando a chave");
      print("Por a moto no neutro");
      print("Ligar");
      print("Por a moto na primeira");
      print("Acelerar");
    } else {
      print("Você não tem CNH");
    }
  }
}

void main() {
  Carro Toyota = Carro(modelo: "Corolla Cross", cor: "Azul", marca: "Toyota");
  Toyota.mover(true);
  print(Toyota);
  print("-------------------------------------------------------------------");
  Moto Honda = Moto(modelo: "250 Twister", cor: "Azul", marca: "Honda");
  Honda.mover(false);
  print(Honda);

}
