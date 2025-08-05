import 'dart:io';
import 'dart:vmservice_io';

void main(){
  int leve = 90;
  int media = 120;
  int grave = 150;

  print("NOME DO MOTORISTA: ");
  String? motorista = stdin.readLineSync();

  print("QUAL A VELOCIDADE QUE O MOTORISTA ESTAVA DIGITANDO: ");
  double velocidade = double.parse(stdin.readLineSync()!);

  if (velocidade <=60){
    print("Sem infração");
    print("Motorista liberado");
    
  }else if(velocidade >60 && velocidade <=80){
    print("Infração leve");
    print("Valores e forma de pagamento infração leve:\n");
    print("1 - Pagar á vista ($leve com 10% de desconto)");
    print("2 - Parcelar em 2x ($leve sem juros)");
    print("3 - Parcelar em 3x ($leve com 10% de juros)");
    print("QUAL É A FORMA DE PAGAMENTO QUE O MOTORISTA GOSTARIA: ");
    String? escolha = stdin.readLineSync();
    
    switch(escolha){
      case "1":
        double desconto = leve * 0.10;
        print("$motorista O valor é de $desconto.");
        break;
      case "2":
        double parcela = leve / 2;
        print("$motorista O valor é 2x de $parcela.");
        break;
      case "3":
        double juros = leve *1.10;
        double jurosparcela = juros/3;
        print("$motorista O valor é 3x de $jurosparcela");
        break;
      default: 
        print("Não existe essa opção");
        break;
    }
  }else if(velocidade >=81 && velocidade <=100){
    print("Infração media");
    
    print("Valores e forma de pagamento infração media:\n");
    print("1 - Pagar á vista ($media com 10% de desconto)");
    print("2 - Parcelar em 2x ($media sem juros)");
    print("3 - Parcelar em 3x ($media com 10% de juros)");
    print("QUAL É A FORMA DE PAGAMENTO QUE O MOTORISTA GOSTARIA: ");
    String? escolha = stdin.readLineSync();
    
    switch(escolha){
      case "1":
        double desconto = media * 0.10;
        print("$motorista O valor é de $desconto.");
        break;
      case "2":
        double parcela = media / 2;
        print("$motorista O valor é 2x de $parcela.");
        break;
      case "3":
        double juros = media *1.10;
        double jurosparcela = juros/3;
        print("$motorista O valor é 3x de $jurosparcela");
        break;
      default: 
        print("Não existe essa opção");
        break;
    }
  }else{
    print("Infração grave");

    print("Valores e forma de pagamento grave:\n");
    print("1 - Pagar á vista ($grave com 10% de desconto)");
    print("2 - Parcelar em 2x ($grave sem juros)");
    print("3 - Parcelar em 3x ($grave com 10% de juros)");
    print("QUAL É A FORMA DE PAGAMENTO QUE O MOTORISTA GOSTARIA: ");
    String? escolha = stdin.readLineSync();
    
    switch(escolha){
      case "1":
        double desconto = grave * 0.10;
        print("$motorista O valor é de $desconto.");
        break;
      case "2":
        double parcela = grave / 2;
        print("$motorista O valor é 2x de $parcela.");
        break;
      case "3":
        double juros = grave *1.10;
        double jurosparcela = juros/3;
        print("$motorista O valor é 3x de $jurosparcela");
        break;
      default: 
        print("Não existe essa opção");
        break;
    }
  }

}