import 'dart:io';

void main(){
  print("Bem-vindo ao menu de refeições");
  print("1 - Strogonoff");
  print("2 - Filé mignon");
  print("3 - Lasanha");
  
  print("Escolha o que você quer comer: ");
  int escolha = int.parse(stdin.readLineSync()!);
  
  switch(escolha){
    case 1: 
      print("Toma o strogonoff");
      break;
    case 2: 
      print("Toma o filé mignon");
      break;
    case 3:
      print("Toma a lasanha");
      break;
  }

  print("Cliente atendido com sucesso!");
}