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
    return result;
  }
}
