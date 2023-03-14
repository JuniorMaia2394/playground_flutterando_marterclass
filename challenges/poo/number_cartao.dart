main() {
  String numValid = "4916641859369080";

  String numInvalid = "5419825003461210";
  String lastNumber = numValid[15];

  List<String> listMult = [];

  for (int i = 0; i < 16; i++) {
    if (i == 0 || i == 4 || i == 8 || i == 12) {
      int resultMult = int.parse(numValid[i]) * 0;
      listMult.add(resultMult.toString());
    } else if (i % 2 == 0) {
      int resultMult = int.parse(numValid[i]) * 2;
      listMult.add(resultMult.toString());
    } else {
      int resultMult = int.parse(numValid[i]) * 1;
      listMult.add(resultMult.toString());
    }
  }

  print(listMult);
}
