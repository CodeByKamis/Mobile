import 'dart:io';

class Veiculo{
  String modelo;
  String marca;
  int anoFabricacao;
  Veiculo({required this.modelo, required this.marca, required this.anoFabricacao});

}

class Carro extends Veiculo{
  //quando é do veiculo vc n diz this mas passa o tipo dele, se for do proprio carro é this 
  //required é quando é obrigatorio, se n for obrigatorio, coloca '?'
  int? qt_portas;
  Carro({required String modelo, required String marca, required int anoFabricacao, this.qt_portas}):super(modelo:modelo, marca: marca, anoFabricacao:anoFabricacao);

}

class Moto extends Veiculo{
  bool? bau;
  Moto({required String modelo, required String marca, required int anoFabricacao, this.bau}):super(modelo: modelo, marca: marca, anoFabricacao:anoFabricacao);
}

void main(){
  Carro Fiat500 = Carro(modelo: "Fiat500", marca: "Fiat", anoFabricacao: 2017, qt_portas: 2);
  Moto Lulu = Moto(modelo: "Benzhou", marca: "TY150T", anoFabricacao: 2015, bau: true);
  print(Fiat500.modelo);
}