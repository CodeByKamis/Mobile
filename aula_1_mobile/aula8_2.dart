import 'dart:io';

class Conta {
  String nome_titulo;
  double saldoInicial;
  double? investimento;

  Conta({required this.nome_titulo, required this.saldoInicial, this.investimento});
}

class ContaCorrente extends Conta {
  double? chequeEspecial;

  ContaCorrente({this.chequeEspecial, double? investimento, required String nome_titulo, required double saldoInicial}) : super( nome_titulo: nome_titulo, saldoInicial: saldoInicial, investimento: investimento);
}

class ContaPoupanca extends Conta {
  double taxaRendimento;

  ContaPoupanca({ double? investimento, required this.taxaRendimento, required String nome_titulo, required double saldoInicial}) : super( investimento: investimento, nome_titulo: nome_titulo, saldoInicial: saldoInicial);

  void aplicarRendimento() {
    double rendimento = saldoInicial * taxaRendimento;
    saldoInicial += rendimento;
    print("saldo + rendimento: R\$ ${saldoInicial.toStringAsFixed(2)}");
  }
}

void main() {
  String nome = "Kamis";
  double saldo = 100.0;
  double? investimento = 50.0;
  double taxa = 0.01; // 1%

  ContaPoupanca contaPoupanca = ContaPoupanca(
    nome_titulo: nome,
    saldoInicial: saldo,
    investimento: investimento,
    taxaRendimento: taxa,
  );

  print("Titular: ${contaPoupanca.nome_titulo}");
  print("Saldo inicial: R\$ ${contaPoupanca.saldoInicial}");
  if (contaPoupanca.investimento != null) {
    print("Investimento: R\$ ${contaPoupanca.investimento}");
  }
  print("Taxa de rendimento: ${contaPoupanca.taxaRendimento * 100}%");

  contaPoupanca.aplicarRendimento();
}
