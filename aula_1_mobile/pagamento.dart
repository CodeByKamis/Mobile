import 'dart:io';

void main(){
  stdout.write("Digite o valor da compra: ");
  double valor = double.parse(stdin.readLineSync()!);//é assim que você converte string em number 

  stdout.write("Digite quantas parcelas você quer fazer: "); //
  int parcelas = int.parse(stdin.readLineSync()!);


  for(int i = 0; i < parcelas; i ++){
    double valorfinal = valor / parcelas;
    print("Valor da percela ${i+1}: $valorfinal\n");

  }


}