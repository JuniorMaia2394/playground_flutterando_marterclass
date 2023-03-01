import 'desafios.dart' as playground;
import 'dart:io';

void main(List<String> arguments) {
  print('SELECIONE UMA DAS OPÇÕES ABAIXO:');
  print('1 - CÁLCULO IMC');
  print('2 - SEQUÊNCIA DE FIBONACCI');
  print('3 - REGRA DE 3');

  var input = int.parse(stdin.readLineSync()!);

  var continuar = true;

  while (continuar) {
    if (input == 1) {
      print({playground.imc()});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else if (input == 2) {
      print('------- FIBONACCI -------');
      print('Digite o valor de n:');
      var n = int.parse(stdin.readLineSync()!);
      print({playground.fibonacci(n)});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else if (input == 3) {
      print({playground.regraDe3()});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else {
      return print('OPÇÃO INVÁLIDA!');
    }
  }
}
