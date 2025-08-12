//atividade feita dia 12/08/2025
import 'dart:io';

bool verificacao(idade){
  if (idade <18){
    idade = false;
    print("Menor de idade, proíbido");
  }else{
    idade = true;
    print("Maior de idade, permitido");
  }
  return idade;
}

void main(){
  print("Quantos anos você tem");
  int idade = int.parse(stdin.readLineSync()!);
  print(verificacao(idade));

}