import 'dart:io';
void main(){
  print("Digite a nota 1: ");
  String? nota1 = stdin.readLineSync();
  int notaum = int.parse(nota1!);

  print("Digite a nota 2: ");
  String? nota2 = stdin.readLineSync();
  int notadois = int.parse(nota2!);

  print("Digite a nota 3: ");
  String? nota3 = stdin.readLineSync();
  int notatres = int.parse(nota3!);

  print("Digite a nota 4: ");
  String? nota4 = stdin.readLineSync();
  int notaquatro = int.parse(nota4!);

  int soma = notaum + notadois + notatres + notaquatro;
  double media = soma / 4;
  if( media <5){
    print("Reprovado(a)");
  }else if(media >5){
    print("Aprovado");
  }
}