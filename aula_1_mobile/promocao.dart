//feito dia 12/08/2025

import 'dart:io';

double calcularDesconto(double preco, double desconto){
  double descontoaplicado = preco * (desconto /100);
  double precofinal = preco - descontoaplicado;
  return precofinal;
}

void main(){
  print("Me diga o seu nome: ");
  String? nome = stdin.readLineSync()!;

  print("Me diga o nome do produto que você deseja comprar: ");
  String? produto = stdin.readLineSync()!;

  print("Me diga o preço do produto");
  double preco = double.parse(stdin.readLineSync()!);

  print("Me diga o quanto de desconto o produto: $produto vai receber: ");
  double desconto = double.parse(stdin.readLineSync()!);

  double funcaozinha = calcularDesconto(preco, desconto);
  
  print("O valor final é de R\$ $funcaozinha");

}