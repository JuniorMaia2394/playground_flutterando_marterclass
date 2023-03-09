import 'dart:io';

main() {
  final cpf = Digito(digitos: '36320297093');

  print(cpf.validarCpf());
}

class Digito {
  String digitos;

  Digito({required this.digitos});

  bool validarCpf() {
    // ------------------- DESCOBRIR O 1° DIGITO -------------------
    List<String> multDigitos = [];
    bool result = false;
    int resto;
    int dv = 10;
    int soma = 0;

    print('\nDigitos: $digitos \n');
    print('Multiplicação:');
    for (var i = 0; i <= 8; i++) {
      int mult = int.parse(digitos[i]) * dv;
      print('${digitos[i]} x $dv = $mult');
      multDigitos.add(mult.toString());
      dv--;
    }

    for (var i = 0; i < multDigitos.length; i++) {
      soma += int.parse(multDigitos[i]);
    }
    print('\nA soma é: $soma\n');

    resto = soma % 11;
    print('O resto é $resto');

    if (resto < 2) {
      int pd = 0;
      if (pd.toString() == digitos[9]) {
        print('O 10º digito é $pd');
        result = !result;
      }
    } else if (resto >= 2) {
      int pd = 11 - resto;
      if (pd.toString() == digitos[9]) {
        print('O 10º digito é $pd 👍');
        result = !result;
      } else {
        print('O 10º não confere $pd 👎');
        result;
      }
    }

    // ------------------- DESCOBRIR O 2° DIGITO -------------------
    List<String> multSDigitos = [];
    int sResto;
    int sDv = 11;
    int sSoma = 0;

    print('\nDigitos: $digitos \n');
    print('Multiplicação:');
    for (var i = 0; i <= 9; i++) {
      int mult = int.parse(digitos[i]) * sDv;
      print('${digitos[i]} x $sDv = $mult');
      multSDigitos.add(mult.toString());
      sDv--;
    }

    for (var i = 0; i < multSDigitos.length; i++) {
      sSoma += int.parse(multSDigitos[i]);
    }
    print('\nA soma é: $sSoma\n');

    sResto = sSoma % 11;

    if (sResto < 2) {
      int pd = 0;
      if (pd.toString() == digitos[10]) {
        print('O 11º digito é $pd');
        result = !result;
      }
    } else if (sResto >= 2) {
      int pd = 11 - sResto;
      if (pd.toString() == digitos[10]) {
        print('O 11º digito é $pd 👍');
        result;
      } else {
        print('O 11º não confere $pd 👎');
        return false;
      }
    }
    return result;
  }
}
