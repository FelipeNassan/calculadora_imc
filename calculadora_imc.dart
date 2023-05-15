import 'dart:io';
import 'dart:math';

main() {
  // Calculadora de IMC - Índice de Massa Corporal 
  print("\n<> CALCULADORA DE IMC <>");

  // Coleta dos dados
  print("Insira as seguintes informações: ");
  stdout.write("[ ALTURA ] ");
  var dAltura = double.parse(stdin.readLineSync().toString());
  stdout.write("[ PESO ] ");
  var dPeso = double.parse(stdin.readLineSync().toString());

  // Cálculo do IMC (Peso / Altura ^ 2)
  final calculoIMC = dPeso / pow(dAltura, 2);
  print("\n[ IMC ] $calculoIMC");

  // Classificação do IMC
  if (calculoIMC < 18.5) {
    print("[ CLASSIFICAÇAÕ ] Abaixo do peso\n");
  } else if (calculoIMC >= 18.5 && calculoIMC <= 24.9) {
    print("[ CLASSIFICAÇAÕ ] Peso normal\n");
  } else if (calculoIMC >= 25 && calculoIMC <= 29.9) {
    print("[ CLASSIFICAÇAÕ ] Sobrepeso\n");
  } else if (calculoIMC >= 30 && calculoIMC <= 34.9) {
    print("[ CLASSIFICAÇAÕ ] Obesidade grau I\n");
  } else if (calculoIMC >= 35 && calculoIMC <= 39.9) {
    print("[ CLASSIFICAÇAÕ ] Obesidade grau II\n");
  } else {
    print("[ CLASSIFICAÇAÕ ] Obesidade grau III ou Mórbida\n");
  }
}
