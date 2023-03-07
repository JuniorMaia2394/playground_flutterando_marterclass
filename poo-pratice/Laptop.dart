main() {
  final laptop1 = Laptop(id: 1, name: 'Dell', ram: '16gb\n');
  final laptop2 = Laptop(id: 2, name: 'Asus', ram: '32gb\n');
  final laptop3 = Laptop(id: 3, name: 'Apple', ram: '8gb');

  print([laptop1.dados(), laptop2.dados(), laptop3.dados()]);
}

class Laptop {
  late int id;
  late String name;
  late String ram;

  Laptop({required this.id, required this.name, required this.ram});

  String dados() {
    return 'id: $id, name: $name, ram: $ram';
  }
}
