main() {
  final cpfVali = CPF(noveDigitos: '36321297093');

  print(cpfVali.validarCpf());
}

class CPF {
  String noveDigitos;

  CPF({
    required this.noveDigitos,
  });

  bool validarCpf() {
    // int digitos = int.parse(noveDigitos);
    // print(noveDigitos[0]);
    int pdv = 10;
    int sdv = 11;
    int soma = 0;
    int soma1 = 0;
    bool result = false;

    //primeiro digito
    for (int i = 0; i <= 8; i++) {
      // 3
      String d = noveDigitos[i];
      // int 3
      int digito = int.parse(d);
      // 3 * 10
      int mult = digito * pdv;
      soma += mult;
      pdv--;
      print(mult);
    }
    int resto = soma % 11;
    if (resto < 2) {
      int pd = 0;
      String diva = pd.toString();
      if (diva == noveDigitos[9]) {
        result = !result;
      }
    } else if (resto >= 2) {
      int pd = 11 - resto;
      String diva = pd.toString();
      if (diva == noveDigitos[9]) {
        result = !result;
      }
    } else {
      result;
    }
    print(soma);
    print(resto);

    // calculo segundo digito
    for (int i = 0; i <= 9; i++) {
      // 3
      String d = noveDigitos[i];
      // int 3
      int digito = int.parse(d);
      // 3 * 10
      int mult = digito * sdv;
      soma1 += mult;
      sdv--;
      print(mult);
    }
    int resto1 = soma1 % 11;
    if (resto1 < 2) {
      int pd = 0;
      String diva = pd.toString();
      if (diva == noveDigitos[10]) {
        result = !result;
        // print('Digito válido $pd');
      }
    } else if (resto1 >= 2) {
      int pd = 11 - resto1;
      String diva = pd.toString();
      if (diva == noveDigitos[10]) {
        result;
      }
    } else {
      return false;
    }
    print(soma1);
    print(resto1);

    return result;
  }
}
