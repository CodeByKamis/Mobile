import 'dart:io';

class Pagamento {
  void processar(){
    print('Você confirma que deseja utilizar o modo de pagamento Pix? (s/n)');
    String? pergunta = stdin.readLineSync();
    if(pergunta == 's'){
      print('Pagamento feito com sucesso');
    }else{
      print("Que pena, então vai ter que ser outra forma de pagamento");
    }
  }
  
}

class Pix extends Pagamento {
  @override
  void processar(){
    print('Você confirma que deseja utilizar o modo de pagamento no Pix? (s/n)');
    String? pergunta = stdin.readLineSync();
    if(pergunta == 's'){
      print('Pagamento feito com sucesso');
    }else{
      print("Que pena, então vai ter que ser outra forma de pagamento");
    }
  }
}

class CartaoCredito extends Pagamento {
  @override
  void processar(){
    print('Você confirma que deseja utilizar o modo de pagamento via cartão de crédito? (s/n)');
    String? pergunta = stdin.readLineSync();
    if(pergunta == 's'){
      print('Pagamento feito com sucesso');
    }else{
      print("Que pena, então vai ter que ser outra forma de pagamento");
    }
  }
}

class Boleto extends Pagamento {
  @override
  void processar(){
    print('Você confirma que deseja utilizar o modo de pagamento via Boleto? (s/n)');
    String? pergunta = stdin.readLineSync();
    if(pergunta == 's'){
      print('Pagamento feito com sucesso');
    }else{
      print("Que pena, então vai ter que ser outra forma de pagamento");
    }
  }
}

void main() {
  print('Escolha o tipo de pagamento (APENAS NÚMERO OK?):');
  print('1 - Pix');
  print('2 - Pagar no Crédito');
  print('3 - Boleto');
  
  String? escolha = stdin.readLineSync();

  Pagamento? pagamento;

  switch (escolha) {
    case '1':
      pagamento = Pix();
      break;
    case '2':
      pagamento = CartaoCredito();
      break;
    case '3':
      pagamento = Boleto();
      break;
    default:
      print('Essa opção de pagamento n existe');
  }

  pagamento?.processar();
}
