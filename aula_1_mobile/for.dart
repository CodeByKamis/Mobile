import "dart:io";

void main(){
  List<String> frutas = [];
//i<3 é vezes de execução, ele começca no 0 - 1 - 2 dando 3 execucoes e para
  for(int i =0; i < 3; i++){
    //comece declarando a variavel
    //segundo argumento: defiena a condicao para parar o programa i <3
    //terceiro agumento: define a mudan~ca de valor de cada repetição
    stdout.write("Digite a sua fruta predileta campeao: ");
    String? fruta = stdin.readLineSync(); //pode ser nulo
    frutas.add(fruta!);// mas so vai adicionar se nao for nulo

  }

  // inves de usar isso
  for(String i in frutas){
    print("$i");
  }



  //for each significa = para cada 
//serve para observar cada dado da lista

// use isso inves do da linha 17
// frutas.forEach((String i) => print("Fruta: $i"));
print("Sua lista completa de frutas: $frutas");


frutas.forEach((String i){
  print(i);
  print("que legal");
});



}

