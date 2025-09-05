import 'dart:io';
//encapsulamento: verifica ANTES DE MUDAR ALGUMA COISA. TIPO DAR BEBIDA PARA JOVEM, VC VERIFICA SE ELE É MAIOR DE IDADE ANTES DE DAR
//AULA DE ENCAPSULAMENTO
class Carro{
  String modelo;
  int _velocidade = 0; //coloca o underline antes do nome para mostrar que ela é privada
  Carro({required this.modelo});
  //funcção GET é chamada para ver o valor do atributo(no caso o _velocidade) privado

  int get mostrar_velocidade{
    return _velocidade;
  }

  //função set --> para alterar o valor com validação
  set alterar_velocidade(int v){
    if (v<0){
      print("Velocidade não pode ser inferior ou igual a 0");
    }else{
      _velocidade = v;
      print("Realizado com sucesso! ${v}");
    }
  }
}