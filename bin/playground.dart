import 'imc&fibonacci.dart' as playground;
import 'dart:io';

void main(List<String> arguments) {
  print('SELECIONE UMA DAS OPÇÕES ABAIXO:');
  print('1 - CÁLCULO IMC');
  print('2 - SEQUÊNCIA DE FIBONACCI');

  var input = int.parse(stdin.readLineSync()!);

  if (input == 1) {
    return print({playground.imc()});
  } else if (input == 2) {
    return print({playground.fibonacci()});
  } else {
    return print('OPÇÃO INVÁLIDA!');
  }
}
