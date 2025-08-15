//realizado no dia 15/08
//dontpad.com/aulavinicius
import 'dart:io';

void main(){
  double valortotal = 0 ;
  int pagamento = 0;
    while(valortotal <= 0){
      try{
        stdout.write("Digite o valor total da sua compra: ");
        valortotal = double.parse(stdin.readLineSync()!);

      if(valortotal<=0){
        print("Precisa ser um valor maior que zero");
      }

      }on FormatException{
        print("Digite apenas numeros e entrada válidas");
      }
    }
      

    do{
      print("1 - Dinheiro\n2 - Cartão de Crédio\n3 - Cartão de Débito\n4 - Pix (escolha de 1 - 4)");
      stdout.write("Digite a forma de pagamento: ");
      try{
        pagamento = int.parse(stdin.readLineSync()!);

        switch(pagamento){
          case 1:
            print("Pagamento por Dinheiro realizado com sucesso!");
            break;
          case 2:
            print("Pagamento por Cartão de Crédio realizado com sucesso!");
            break;
          case 3:
            print("Pagamento por Cartão de Débito realizado com sucesso!");
            break;
          case 4:
            print("Pagamento por Pix realizado com sucesso!");
            break;
          default:
            print("Entrada inválida, digite uma forma de pagamento apresentada");
            break;
        }
      } catch (error) {
        print("Entrada inválida. Digite um número válido.");
        pagamento = 0;
      }

    }while (pagamento < 1 || pagamento > 4);

}