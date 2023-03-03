import 'dart:io';

void ruleOfThree() {
  print('----- REGRA DE 3 -----');
  List? values = [];
  for (var i = 1; i < 4; i++) {
    print('Digite o $i° valor:');
    String? inputValue = stdin.readLineSync();
    double value = double.parse(inputValue!);
    values.add(value);
  }

  print('----- OPERAÇÃO -----');
  print('${values[0]}x = ${values[1]} * ${values[2]}');
  double resultBC = values[1] * values[2];
  print('${values[0]}x = $resultBC');
  print('x = $resultBC/${values[0]}');
  double resultABCX = (values[1] * values[2]) / values[0];
  print('X = ${resultABCX.toStringAsFixed(2)}');
}
