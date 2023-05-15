import 'dart:io';
import 'dart:math';

main() {
  // Calculadora de IMC - Índice de Massa Corporal
  print("\n<> CALCULADORA DE IMC <>");

  // Coleta dos dados
  print("Insira as seguintes informações: ");
  double dAlturaPaciente = pegarAltura();
  double dPesoPaciente = pegarPeso();

  // Retorno do valor do IMC e o respectivo status
  double dValorIMC = calculoIMC(dPesoPaciente, dAlturaPaciente);
  stdout.write('\n[ IMC ] $dValorIMC\n[ CLASSIFICAÇÃO ] ');
  
  // Classificação do IMC
  if (dValorIMC < 18.5) {
    print('Abaixo do peso');
  } else if (dValorIMC >= 18.5 && dValorIMC <= 24.9) {
    print('Peso normal');
  } else if (dValorIMC >= 25 && dValorIMC <= 29.9) {
    print('Sobrepeso');
  } else if (dValorIMC >= 30 && dValorIMC <= 34.9) {
    print('Obesidade grau I');
  } else if (dValorIMC >= 35 && dValorIMC <= 39.9) {
    print('Obesidade grau II');
  } else {
    print('Obesidade grau III ou Mórbida');
  }
  stdout.write('\n');
}

/// Função para pegar a altura de uma pessoa.
double pegarAltura() {
  stdout.write("[ ALTURA ] ");
  final altura = stdin.readLineSync();
  if (altura == null) {
    return 0.0;
  } else {
    return double.parse(altura);
  }
}

/// Função para pegar o peso de uma pessoa.
double pegarPeso() {
  stdout.write("[ PESO ] ");
  final peso = stdin.readLineSync();
  if (peso == null) {
    return 0.0;
  } else {
    return double.parse(peso);
  }
}

/// Função que realiza o cálculo do IMC (Peso / Altura ^ 2)
double calculoIMC(double dPeso, double dAltura) {
  final IMC = dPeso / pow(dAltura, 2);
  return IMC;
}
