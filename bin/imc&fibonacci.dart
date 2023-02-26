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

int fibonacci() {
  int fi(int n) => n <= 2 ? 1 : fi(n - 2) + fi(n - 1);
  String output = "";
  for (int i = 1; i <= 10; ++i) {
    output += "${fi(i)}, ";
  }
  print(output);
  return 0;
}
