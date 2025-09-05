import 'dart:io';
import 'dart:math';

class Forma {
  double calcularArea() {
    print("Calculando área na classe base...");
    return 0;
  }
}

class Quadrado extends Forma {
  double lados;
  Quadrado(this.lados);

  @override
  double calcularArea() {
    double area = lados * lados;
    print("Quadrado com lado $lados tem um total de área: $area");
    return area;
  }
}

class Retangulo extends Forma {
  double largura;
  double altura;
  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    double area = largura * altura;
    print("O retângulo de $largura x $altura tem um total de área: $area");
    return area;
  }
}

class Circulo extends Forma {
  double raio;
  Circulo(this.raio);

  @override
  double calcularArea() {
    double area = pi * raio * raio;
    print("O círculo com raio $raio tem um total de área: ${area.toStringAsFixed(2)}");
    return area;
  }
}

void main() {
  print('Escolha qual forma de calcular a área (APENAS NUMEROS OK?):');
  print('1 - Quadrado');
  print('2 - Retângulo');
  print('3 - Circulo');
  stdout.write('Digite o número da forma desejada: ');
  String? escolha = stdin.readLineSync();

  switch (escolha) {
    case '1':
      stdout.write('Digite o tamanho do lado do quadrado: ');
      String? ladoStr = stdin.readLineSync();
      double? lado = double.tryParse(ladoStr ?? '');
      if (lado != null && lado > 0) {
        Quadrado q = Quadrado(lado);
        q.calcularArea();
      } else {
        print('Escreveu errado fi');
      }
      break;

    case '2':
      stdout.write('Digite a largura do retângulo: ');
      String? larguraStr = stdin.readLineSync();
      stdout.write('Digite a altura do retângulo: ');
      String? alturaStr = stdin.readLineSync();
      double? largura = double.tryParse(larguraStr ?? '');
      double? altura = double.tryParse(alturaStr ?? '');
      if (largura != null && largura > 0 && altura != null && altura > 0) {
        Retangulo r = Retangulo(largura, altura);
        r.calcularArea();
      } else {
        print('ESCREVEU ERRADDOOO');
      }
      break;

    case '3':
      stdout.write('Digite o raio do círculo: ');
      String? raioStr = stdin.readLineSync();
      double? raio = double.tryParse(raioStr ?? '');
      if (raio != null && raio > 0) {
        Circulo c = Circulo(raio);
        c.calcularArea();
      } else {
        print('ESCREVEU ERRADOOO');
      }
      break;
    default:
      print('Essa opção não existe.');
  }
}
