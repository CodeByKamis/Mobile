import 'dart:io';

// void main(){
//   try{
//     print("Digite o seu número usuário: ");
//     int numero = int.parse(stdin.readLineSync()!);
//     print("Numero cadastrado com sucesso");


//   }catch(error){
//     print("Esse é o se erro $error");
//   }finally{ //independente de dar errado OU certo, execute esse programa
//     print("Programa encerrado.");
//   }
// }

//nullo é quando nem é adicionado um valor para ela
//vazio pode ser dar espaço etc



// void main(){
//   try{
//     print("Digite o seu número usuário: ");
//     int numero = int.parse(stdin.readLineSync()!);
//     print("Numero cadastrado com sucesso");


//   }on FormatException{ //com ele vc consegue mostrar uma resposta de erro mais bonita e personalizada
//     print("Digite apenas números!");
//   }
// }

void main(){
  try{
    print("Digite o seu número usuário: ");
    int numero = int.parse(stdin.readLineSync()!);
    print("Numero cadastrado com sucesso");



  }on FormatException{ //com ele vc consegue mostrar uma resposta de erro mais bonita e personalizada
    print("Digite apenas números!");
  }on TypeError{ //serve para conversao de dados, quando o cliente quer fazer conversao de dados mas o tipo de dado n é possivel converter, como converter um nome para int, da esse erro aqui bonito para o usário
    print("Conversão de dados inválida.");
  }
}
