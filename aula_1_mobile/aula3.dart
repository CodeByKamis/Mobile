import "dart:io";

// void main(){
//   String continuar = "";
//   String lower = ""; //primeiro chama ela para ser 


//   do{
//     print("Bem vindo ao mercado da kamis");
//     print("1 Comprar feijão");
//     print("2 comprar arroz");
//     print("Deseja contnuar comprando?");
//     continuar = stdin.readLineSync()!;
//     String lower = continuar.toLowerCase();

//     if (lower != "sim"){
//       print("Tchauzinho");
//       break;
//     }

//   }while(lower == "sim");
// }


// void main(){

//   stdout.write("Digite a sua senha: "); //serve para colocar o input na frente do print
//   String? senha = stdin.readLineSync();


//   while(senha != "1234"){
//     print("Tente novamente");
//     stdout.write("Digite a sua senha: "); //serve para colocar o input na frente do print
//     senha = stdin.readLineSync()!;
//   }
//   //informações sensiveis
//   print("\nacesso liberado!\n");
//   print("Seja bem vindo joaozinho do grau ao sistema");
//   print("Seu vulgo é amigo\n");
  
// }

void main(){

  stdout.write("Digite a sua senha: "); //serve para colocar o input na frente do print
  String? senha = stdin.readLineSync();


  while(senha != "1234"){
    print("Tente novamente");
    stdout.write("Digite a sua senha: "); //serve para colocar o input na frente do print
    senha = stdin.readLineSync()!;
  }
  //informações sensiveis
  print("\nacesso liberado!\n");
  print("Seja bem vindo joaozinho do grau ao sistema");
  print("Seu vulgo é amigo\n");
  
}