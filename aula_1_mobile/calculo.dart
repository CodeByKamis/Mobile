import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!);
  int soma = idade + 1;
  print(soma);
}