//feito no dia 15/08/2025

import 'dart:io';

void main(){
  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty){
    print("Entrada inválida!!!!! ");
    stdout.write("Digite novamente o seu nome completo: ");
    nome = stdin.readLineSync();
  }
  print("Você foi logado com sucesso!\n");
  print("Seja bem-vindo(a) $nome!");
}