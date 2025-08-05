//for each significa = para cada 
//serve para observar cada dado da lista
import "dart:io";
//use o for each quando vc quer observar sua lista
void main(){
  List<int> numeros = [1,2,3];
  numeros.forEach((int i){
    i += 1;
    print(i);
  });
  print(numeros);
}