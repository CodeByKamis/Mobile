import 'dart:io'; //importa a biblioteca com as funoes da linguagem
// extremamente importante void main -  função princiapl para rodar o codigo
void main(){
  print("Digite o seu nome");//a mensagem do print é o que vai aparecer no input - se nn tiver n da para ter um input
  String? nome = stdin.readLineSync();//para dar um input, pedindo o nome do usuario, ? serve para permitir que o input do usuario pode ser nulo
  String nome2 = nome!.toLowerCase();
  print("Olá, seu nome é $nome2");//para mostrar o nome, se n tiver frase so colocar o nome da variavel, nesse caso tem mensagem ent usa $ para reconhecer a variavel

  if (nome2 == "kamila" || nome2 == "paula"){
    print("você é linda");
  }else if(nome2 == "paula" || nome2 =="deraldo"){
    print("Oi pais lindos :D");
  }else{
    print("Não te conheço");
  }

}