import 'dart:io';

double celciusParaFahrenheit(double temperaturacelcius){
  double converter = temperaturacelcius * 1.8 + 32;
  return converter;
}

void main(){
  print("Qual é a temperatura atual em celcius? ");
  double temperaturacelcius = double.parse(stdin.readLineSync()!);

  double convertido = celciusParaFahrenheit(temperaturacelcius);
  print("A temperatura convertida para Fahrenheit é: $convertido");
}