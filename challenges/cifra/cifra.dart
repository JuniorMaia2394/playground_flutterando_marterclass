import 'dart:math';

main() {
  final cifra = Cifra(text: 'BAO&#');
  cifra.vigenere();
}

class Cifra {
  String text;
  Cifra({
    required this.text,
  });
  final regex = RegExp(r'[A-Z]');
  List<int> keys = [];
  List<String> somaTextKey = [];
  List<String> divTextKey = [];
  List<String> subTextKey = [];
  List<String> convertSubTextKey = [];

//key
//Para executar o encode e decode é necessário ter uma chave que tenha valores randômicos mas que tenha a mesma quantidade de caracteres do texto a ser criptografado
//gera valores aleatórios entre 65 a 90(A-Z) tabela ASCII
  void key(int textLength) {
    var random = Random();
    for (var i = 0; i < textLength; i++) {
      int randomKey = random.nextInt(26) + 65;
      keys.add(randomKey);
    }
    print('Keys: $keys');
  }

//Encode
//Passo 1: Receba a o texto a ser criptografado e a chave em questão.
  void encode(String text, List<int> keys) {
//Passo 2: deve-se somar o charCode de cada letra do texto e da key em suas respectivas posições e dividir por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
    for (var i = 0; i < text.length; i++) {
      if (regex.hasMatch(text[i]) == true) {
        int soma = text[i].codeUnitAt(0) + keys[i];
        somaTextKey.add(soma.toString());
        int div = (int.parse(somaTextKey[i]) % 26) + 65;
//O resultado da soma anterior é o novo char.
        divTextKey.add(div.toString());
      } else {
//Lembre-se: Valores não alfabetos não devem ser transformados.
        somaTextKey.add(text[i]);
        divTextKey.add(text[i]);
      }
    }
    print('Encode: $divTextKey');
  }

//decode
//Passo 1: Receba a o texto criptografado e a chave.
  void decode(List<String> divTextKey, List<int> keys) {
//Passo 2: deve-se subtrair o charCode de cada letra do texto e da key em suas respectivas posições somando o resultado com 26.
    for (var i = 0; i < divTextKey.length; i++) {
      var convert = int.tryParse(divTextKey[i]);
      if (convert != null) {
        int sub = ((convert - keys[i]) + 26);
        subTextKey.add(sub.toString());
//O resultado deve ser dividido por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
        int div = ((int.parse(subTextKey[i]) % 26) + 65);
//Passo 3: O resultado da soma anterior é o  char descriptografado.
        convertSubTextKey.add(String.fromCharCode(div));
      } else {
        subTextKey.add(divTextKey[i].toString());
//Lembre-se: Valores não alfabetos não devem ser transformados.
        convertSubTextKey.add(divTextKey[i].toString());
      }
    }
    print('Decode: $convertSubTextKey');
  }

  void vigenere() {
    print('Texto: $text');
    key(text.length);
    encode(text, keys);
    decode(divTextKey, keys);
  }
}
