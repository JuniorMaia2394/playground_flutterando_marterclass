import 'dart:math';

main() {
  final cifra = Cifra(text: 'BATATA');
  print(cifra.verificarCifra());
}

class Cifra {
  String text;
  Cifra({
    required this.text,
  });
  //variaveis
  String textKey = '';
  int somaCharText = 0;
  int somaCharKey = 0;
  int somaTotal = 0;
  int somaCharA = 0;
  double divChar = 0.0;
  double restChar = 0.0;

//função que faz o random das letras da palavra digitada
//tenho como parametro o tamanho da string, e o texto que vai ser randomizado
  String randomString(int lengthString, String textRandom) {
    final random = Random(); //instacio a classe Random()

    //Uso o List.generate para randomizar as posições das letras com tamanho da string
    final randomString = List.generate(lengthString,
        (index) => textRandom[random.nextInt(textRandom.length)]).join();

    //atribuo o valor da randomString ao textKey
    return textKey = randomString;
  }

//função para verificar a cifra
  String verificarCifra() {
    //instancio a classe Regex com a seguinte validação, so letras maiuscula de A a Z
    final regex = RegExp(r'^[A-Z]+$');

    //se o texto digitado for de acordo com a validação ele entra nesse if
    if (regex.hasMatch(text)) {
      //chamo a função para setar os valores, para as variaveis
      randomString(text.length, text);

      //soma do charCode de cada letra da palavra digiada
      for (var i = 0; i < text.length; i++) {
        somaCharText += text[i].codeUnitAt(0);
      }

//soma do charCode de cada letra da key
      for (var i = 0; i < textKey.length; i++) {
        somaCharKey += textKey[i].codeUnitAt(0);
      }
      //soma do charCode de cada letra do texto e da key em suas respectivas posições
      somaTotal = somaCharKey + somaCharText;
      // dividir por 26
      divChar = somaTotal / 26;
      //resto da divisão
      restChar = somaTotal % 26;
      // somando o resto da divisão com o charCode da letra A(65)
      somaCharA = 65 + restChar.toInt();

      //se o somaCharA for uma String entra nesse if e printa o novo charCode
      if (RegExp(r'[a-zA-Z]').hasMatch(String.fromCharCode(somaCharA))) {
        print('Novo charCode: ${String.fromCharCode(somaCharA)}');
      }
      //caso seja um digito entra nesse else
      else {
        print('Valor não alfabeto');
      }

      // print('Soma do resto: $somaCharA');
      // print('Resto: ${restChar.toInt()}');
      // print('Divisão: ${divChar.toInt()}');
      // print('Soma total: $somaTotal');
      // print('Soma code text: $somaCharText');
      // print('Soma code key: $somaCharKey');
    }
    //se nao, entra nesse else
    else {
      print('incorreto!');
    }
    return '';
  }
}
