import 'dart:io';
import '../challenges/imc.dart';
import '../challenges/fibonacci.dart';
import '../challenges/rule_of_three.dart';

void main(List<String> arguments) {
  print('SELECIONE UMA DAS OPÇÕES ABAIXO:');
  print('1 - CÁLCULO IMC');
  print('2 - SEQUÊNCIA DE FIBONACCI');
  print('3 - REGRA DE 3');

  var input = int.parse(stdin.readLineSync()!);

  var continuar = true;

  while (continuar) {
    if (input == 1) {
      print({imc()});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else if (input == 2) {
      print('------- FIBONACCI -------');
      print('Digite o valor de n:');
      var n = int.parse(stdin.readLineSync()!);
      print({fibonacci(n)});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else if (input == 3) {
      print({ruleOfThree()});
      print('Deseja continuar?(s/n)');
      var inputContinuar = stdin.readLineSync()!;
      inputContinuar == 's' ? continuar : continuar = false;
    } else {
      return print('OPÇÃO INVÁLIDA!');
    }
  }
}
