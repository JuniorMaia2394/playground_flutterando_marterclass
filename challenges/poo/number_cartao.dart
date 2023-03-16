main() {
  String numValid = "4916641859369080";

  String numInvalid = "5419825003461210";
  String lastNumber = numValid[15];

  List<int> listTwoDigits = [];
  List<String> listMult = [];

  for (int i = 0; i < 15; i++) {
    // if (i == 0
    //     // || i == 4 || i == 8 || i == 12
    //     ) {
    //   int resultMult = 0;
    //   listMult.add(resultMult.toString());
    // } else
    if (i % 2 == 0) {
      int resultMult = int.parse(numValid[i]) * 2;
      if (resultMult > 9) {
        double div = resultMult / 10;
        double rest = resultMult % 10;
        listTwoDigits.add(div.toInt());
        listTwoDigits.add(rest.toInt());
      } else {
        listMult.add(resultMult.toString());
      }
    } else {
      int resultMult = int.parse(numValid[i]);
      if (resultMult > 9) {
        double div = resultMult / 10;
        double rest = resultMult % 10;
        listTwoDigits.add(div.toInt());
        listTwoDigits.add(rest.toInt());
      } else {
        listMult.add(resultMult.toString());
      }
    }
  }
  //multiplicando os digitos da lista
  int somaListMult = 0;
  for (int i = 0; i < listMult.length; i++) {
    somaListMult += int.parse(listMult[i]);
  }

  int somaListTwoDigits = 0;
  for (int i = 0; i < listTwoDigits.length; i++) {
    somaListTwoDigits += listTwoDigits[i];
  }

  int somaTotal = somaListMult + somaListTwoDigits;
  double divTotal = 10 / somaTotal;
  double restTotal = 10 % somaTotal.toDouble();
  int subTotal = 10 - restTotal.toInt();
  if (subTotal.toString() == lastNumber) {
    print('true');
  } else {
    print('false');
  }
  print('Subtração: ${subTotal.toInt()}');
  print('Divisão ${divTotal.toInt()}');
  print('Resto: ${restTotal.toInt()}');
  print('Soma: ${somaTotal.toInt()}');
  print(somaListMult);
  print(somaListTwoDigits);
  print(listMult);
}
