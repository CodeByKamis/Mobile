import "dart:io";
void main(){
  String opcao = "";
  do{
    print("Escolha a forma de pagamento");
    print("1- Credito\n2 - debito\n3- pix\n4 -dinheiro");
    opcao = stdin.readLineSync()!;

    switch(opcao){
      case "1":
        print("Pagamento feito");
        break;
      case "2":
        print("Pagamento feito");
        break;
      case "3":
        print("Pagamento feito");
        break;
      case "4":
        print("Pagamento feito");
        break;
      default: 
        print("Não existe essa opção");
        break;
    }
  }while(opcao == "");
}
