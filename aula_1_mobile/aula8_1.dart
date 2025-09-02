import 'dart:io';

class Animal{
  int idade;
  String nome;
  Animal({required this.idade, required this.nome});
}


class Cachorro extends Animal{
  String? raca;
  String fazersom;
  Cachorro(this.raca,{required this.fazersom, required int idade, required String nome}):super(idade: idade, nome: nome);
}

class Gato extends Animal{
  String? cor;
  String fazersom;
  Gato(this.cor,{ required this.fazersom, required int idade, required String nome}):super(idade: idade, nome: nome);
}

void main(){
  Cachorro Cody =Cachorro("Schnauzer", fazersom: "au-au", idade: 2, nome: "Cody");
  Gato Garfield =Gato("Laranja", fazersom: "miau-miau", idade: 1, nome: "Garfield");
  print(Cody.fazersom);
  print(Garfield.fazersom);

}