import 'dart:io';
//quando a funcao nao retorna nada para você, voce chama ela de void
//a funcao pode ficar em cima ou em baixo da void main tanto faz
//return te permite pegar o valor gerado e colocar em outro lugar, em outra função, tipo o desconto, faz a funcao de desconto e da return e ai da pra usar isso no void main
//o parametro funcao(parametro) é usada quando precisamos de uma informacao para executar a função
//é uma funcao sem parametro e sem return para a funcao princiapal
void somente_mostra(){ 
  print("Bem-vindo ao restaurante. Escolha a sua opção de comida");
  print("1 - Lasanha");
  print("2 - Feijoada");
  print("3 - X-bacon");
}

void main(){
somente_mostra();
soma(10,20);
int valordafuncao = multiplicando(); //como essa funcao tem return eu posso usar ela como nesse caso
int valorfinal = valordafuncao *2;//depois eu pego ela e faço outras contas
print(valorfinal);//entao posso printar o resultado final


int sub = subtracao(20,10);
int calculo = sub * 2;
print("$calculo");
}

//funcao com parametro e sem retorno
void soma (int num1, int num2){
  int valor = num1 + num2;
  print("$valor");
}

//toda funcao que tem retorno vc tem que tipar ela, se ela n tiver return é void, se tem retorna você com a tipagem
//nesse caso é tipo int
int multiplicando (){
  int valor = 2 * 9;
  return valor; 
}
//return retorna algo e depois na void main podemos manipular esse valor

//com parametro e com retorno
int subtracao(int num1, int num2){
  int valor = num1 - num2;
  return valor;
}