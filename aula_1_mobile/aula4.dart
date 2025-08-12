import 'dart:io';

void main(){
  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  while(nome == null || nome.trim().isEmpty){//isEmpty é igual a vazio - se o nome for vazio executa
  //o trim ele considera o espaço como informação nula e reconhece como nula tbm
    print("Existem dados vazios ou nulo, tente novamente!");
    stdout.write("\nDigite o seu nome novamente: ");
    nome = stdin.readLineSync();
  }
    print("Logado com sucesso");
}

//nullo é quando nem é adicionado um valor para ela
//vazio pode ser dar espaço etc