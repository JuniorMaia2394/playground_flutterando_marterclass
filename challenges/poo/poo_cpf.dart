import 'dart:io';

// 36320297093
main() {
  // ------------------- DESCOBRIR O 1° DIGITO -------------------
  List<String> noveDigitos = [];
  List<String> multDigitos = [];
  bool result = false;
  int dv = 10;
  int soma = 11;
  int resto;

  //escreve os digitos e adiciona na lista noveDigitos
  for (var i = 1; i <= 9; i++) {
    print('Digite o $i digito:');
    String? inputValue = stdin.readLineSync();
    noveDigitos.add(inputValue!);
  }
  //printa os digitos da lista noveDigitos
  print(noveDigitos);

  //multiplica cada digito da lista noveDigitos por 10,9,8...
  //e o resultado da multiplicação guarda na lista multDigitos
  for (var i = 0; i < noveDigitos.length; i++) {
    int mult = int.parse(noveDigitos[i]) * dv;
    dv--;
    multDigitos.add(mult.toString());
  }
  print(multDigitos);

  //soma todos os resultados da multiplicação
  //e adiciona na variavel soma
  for (var i = 0; i < multDigitos.length; i++) {
    soma += int.parse(multDigitos[i]);
  }
  print(soma);

  // //aqui iremos verificar o resto da divisão (soma % 11)
  resto = soma % 11;

  if (resto < 2) {
    noveDigitos.add('0');
    !result;
  } else if (resto >= 2) {
    int sd = 11 - resto;
    noveDigitos.add('$sd');
    !result;
  } else {
    result;
  }

  print(noveDigitos);

  // ------------------- DESCOBRIR O 2° DIGITO -------------------
  // List<String> dezDigitos = [];
  // List<String> multdezDigitos = [];
  // bool resultDez = false;
  // int dvdezDigitos = 11;
  // int somaDezDigitos = 0;
  // int restoDezDigitos;

  // // //escreve os digitos e adiciona na lista dezDigitos
  // for (var i = 1; i <= 10; i++) {
  //   print('Digite o $i digito:');
  //   String? inputValue = stdin.readLineSync();
  //   dezDigitos.add(inputValue!);
  // }

  // // //multiplica cada digito da lista noveDigitos por 10,9,8...
  // // //e o resultado da multiplicação guarda na lista multDigitos
  // for (var i = 0; i < dezDigitos.length; i++) {
  //   int mult = int.parse(dezDigitos[i]) * dvdezDigitos;
  //   dvdezDigitos--;
  //   multdezDigitos.add(mult.toString());
  // }
  // print(multdezDigitos);

  // // //soma todos os resultados da multiplicação
  // // //e adiciona na variavel soma
  // for (var i = 0; i < multdezDigitos.length; i++) {
  //   somaDezDigitos += int.parse(multdezDigitos[i]);
  // }
  // print(somaDezDigitos);

  // // //aqui iremos verificar o resto da divisão (soma % 11)
  // restoDezDigitos = somaDezDigitos % 11;

  // if (restoDezDigitos < 2) {
  //   dezDigitos.add('0');
  //   !resultDez;
  // } else if (restoDezDigitos >= 2) {
  //   int sd = 11 - restoDezDigitos;
  //   dezDigitos.add('$sd');
  //   !resultDez;
  // } else {
  //   resultDez;
  // }
  // print(dezDigitos);
}
