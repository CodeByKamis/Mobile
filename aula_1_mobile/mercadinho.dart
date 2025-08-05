import "dart:io";

void main(){
  print("Bem-vindo ao mercadinho da kamis");
  double caixa = 0;
  String cpf = "";
  double valor = 0;
  String pergunta = "";
  String produto = "";
  String opcao = "";
  String cont = "";
  List <String> carrinho = [];
  do{
    print("Veja nossos produtos");
    print("Banana\nMaça\nMacarrão");

    stdout.write("Digite o seu cpf: ");
    cpf = stdin.readLineSync()!;

    stdout.write("Qual produto você deseja comprar?");
    produto = stdin.readLineSync()!;
    
      
    print("Qual o preço do produto: $produto");
    valor = double.parse(stdin.readLineSync()!); //tem que converter em double porq o stdin é sempre string mesmo tipando como double
    carrinho.add(produto);
    caixa = caixa + valor;
    print("Produto adicionado ao carrinho");
    print("O seu carrinho: $carrinho");
        
    print("Você deseja incluir mais itens? (sim ou nao)");
    pergunta = stdin.readLineSync()!; 
    if (pergunta == "nao"){
      print("Seu carrinho: $carrinho");
      print("Total da compra: R\$$valor");
      do{
        print("Escolha o formato de pagamento cliente do cpf $cpf");
        print("1 - À vista (10% de desconto)");
        print("2 - Parcelado no cartão (com 10% de juros)");
        print("3 - Fiado (15% a mais para pagar na próxima compra)");
        opcao = stdin.readLineSync()!;
      }while(opcao == "");
      switch(opcao){
        case "1":
          double desconto = valor * 0.10;
          valor = valor - desconto;
          print("Desconto aplicado, o valor final da compra é de: R\$$valor");
          break;
        case "2":
          valor = valor * 1.10;
          print("Juros de 10% aplicado, o valor final da compra é de: R\$$valor");
          break;
        case "3":
          valor = valor * 1.15;
          print("Juros de 15% aplicado, o valor final da compra é de: R\$$valor");
          break;
        default:
          print("Não entendi, entrada inválida");
          break;
      }
      }else{
        continue;
      }
    print("Você deseja continuar (s/n)");
    cont = stdin.readLineSync()!;

  }while(cont != "n");
  print("Volte sempre");
}