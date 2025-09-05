import 'dart:io';
import 'atividade.dart';
void main(){
  Carro up =Carro(modelo: "UPTESLA NÃO AGRADO A TODOS E ESTÁ TUDO BEM");
  up.alterar_velocidade = 10;
  print(up.mostrar_velocidade);

}