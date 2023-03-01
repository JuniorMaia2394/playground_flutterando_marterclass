import 'desafios.dart' as playground;
import 'dart:io';

void main(List<String> arguments) {
  print('SELECIONE UMA DAS OPÇÕES ABAIXO:');
  print('1 - CÁLCULO IMC');
  print('2 - SEQUÊNCIA DE FIBONACCI');
  print('3 - REGRA DE 3');

  var input = int.parse(stdin.readLineSync()!);

  if (input == 1) {
    return print({playground.imc()});
  } else if (input == 2) {
    print('------- FIBONACCI -------');
    print('Digite o valor de n:');
    var n = int.parse(stdin.readLineSync()!);
    return print({playground.fibonacci(n)});
  } else if (input == 3) {
    print('----- REGRA DE 3 -----');
    print('Digite o valor de A:');
    double A = double.parse(stdin.readLineSync()!);
    print('Digite o valor de B:');
    double B = double.parse(stdin.readLineSync()!);
    print('Digite o valor de C:');
    double C = double.parse(stdin.readLineSync()!);
    return print({playground.regraDe3(A, B, C)});
  } else {
    return print('OPÇÃO INVÁLIDA!');
  }
}
