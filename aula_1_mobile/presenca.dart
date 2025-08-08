import 'dart:io';
void main(){
  List <String> nomes = ["Kamila","Paula","Nilva"];
  List <String> presentes = [];
  List <String> ausentes = [];
  int presenca = 0;
  int falta = 0;

  nomes.forEach((String i){
    stdout.write("A pessoa $i está presente? (sim/nao)");
    String? pergunta = stdin.readLineSync();

    if (pergunta == "sim"){
      presentes.add(i!);
      presenca += 1;
    }else{
      ausentes.add(i!);
      falta +=1;
    }
  });

  print("Os alunos presentes são $presenca, sendo eles: " + presentes.join(", "));
  print("Os alunos ausentes são $falta, sendo eles: "+ ausentes.join(", "));
}