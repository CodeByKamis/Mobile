import 'dart:io';

class Animal{
  String raca;
  String cor;
  String nome;
  Animal ({required this.raca, required this.cor, required this.nome});
  void falar(String nome){
    print("");
  }

  String chamar(){ //faz retornar todos os dados do objeto no print
    return "$raca, $cor, $nome";
  }


}

class Cachorro extends Animal{
  Cachorro ({required String raca, required String cor, required String nome}):super(raca:raca, cor:cor, nome:nome);
  @override
  void falar(String nome){
    print("Auau");
  }
}


class Gato extends Animal{
  Gato ({required String raca, required String cor, required String nome}):super(raca:raca, cor:cor, nome:nome);
  @override
  void falar(String nome){
    print("Miau");
  }
}


class Papagaio extends Animal{
  Papagaio ({required String raca, required String cor, required String nome}):super(raca:raca, cor:cor, nome:nome);
  @override
  void falar(String nome){
    print("OIII");
  }
}



void main(){
  Cachorro pet =Cachorro(raca: "Pintcher", cor: "Marrom", nome: "Belinha");
  Gato laila=Gato(cor: "branco", raca: "Gatin", nome: "maiu");

  pet.falar("Belinha");
  pet.falar("laila");
  pet.chamar();
}