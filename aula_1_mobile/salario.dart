import 'dart:io';

void main(){
  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Agora você vai digitar o valor dos seus últimos 3 salários:");

  print("Primeiro salário: ");
  String? entrada= stdin.readLineSync();
  double salarioum = double.parse(entrada!);


  print("Segundo salário: ");
  String? entrada2 = stdin.readLineSync();
  double salariodois = double.parse(entrada2!);


  print ("Terceiro Salário: ");
  String? entrada3 = stdin.readLineSync();
  double salariotres = double.parse(entrada3!);
 

  if (salarioum < 0 || salariodois <0 || salariotres <0){
    print("Porfavor, digite salários com saldos positivos! Tente novamente.");
  }
  else{
    double soma = salarioum + salariodois + salariotres;
    double media = soma / 3;
    
    if (media >= 4000){
      print("$nome a sua média salarial é bacana!");
    }else if(media <4000 && media >2000){
      print("$nome a sua media salárial está boa");
    }else{
      print("Olha $nome está ok, mas para melhorar..");
    }
  }
}