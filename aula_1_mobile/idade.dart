import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!);//conversor para int, só pode converter se não for nulo por isso coloca !
  if (idade >=18){
    print("Você pode beber, bora tonzé");
  } else{
    print("Você é menor, sem tonzé");
  }
}