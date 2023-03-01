import 'dart:io';

String imc() {
  print('------- IMC -------');
  print('Qual seu peso?');
  var peso = double.parse(stdin.readLineSync()!);

  print('Qual sua altura?');
  var altura = double.parse(stdin.readLineSync()!);

  var imc = peso / (altura * altura);

  if (imc < 18.5) {
    return 'SEU IMC FOI DE ${imc.toStringAsFixed(2)}, MAGREZA';
  } else if (imc > 18.5 && imc < 24.9) {
    return 'SEU IMC FOI DE ${imc.toStringAsFixed(2)}, NORMAL';
  } else if (imc > 24.9 && imc < 29.9) {
    return 'SEU IMC FOI DE ${imc.toStringAsFixed(2)}, SOBREPESO';
  } else if (imc > 29.9 && imc < 39.9) {
    return 'SEU IMC FOI DE ${imc.toStringAsFixed(2)}, OBESIDADE';
  } else if (imc > 40) {
    return 'SEU IMC FOI DE ${imc.toStringAsFixed(2)}, OBESIDADE GRAVE';
  }
  return '';
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return (fibonacci(n - 1) + fibonacci(n - 2));
}

void regraDe3() {
  print('----- REGRA DE 3 -----');
  print('Digite o valor de A:');
  double A = double.parse(stdin.readLineSync()!);
  print('Digite o valor de B:');
  double B = double.parse(stdin.readLineSync()!);
  print('Digite o valor de C:');
  double C = double.parse(stdin.readLineSync()!);
  print('VALOR DE A: $A');
  print('VALOR DE A: $B');
  print('VALOR DE A: $C');
  print('VALOR DE X: X');

  print('----- OPERAÇÃO -----');
  print('${A}x = $B * $C');
  double resultBC = B * C;
  print('${A}x = $resultBC');
  print('x = $resultBC/$A');
  double resultABCX = (B * C) / A;
  print('X = ${resultABCX.toStringAsFixed(2)}');
}
