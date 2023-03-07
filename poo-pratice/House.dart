main() {
  List houses = [];
  final house = House(id: 1, name: 'Litle House', prize: 'US\$ 15.000');
  houses.add(house.data());

  final house1 = House(id: 2, name: 'Big House', prize: 'US\$ 30.000');
  houses.add(house1.data());

  final house2 = House(id: 3, name: 'House', prize: 'US\$ 20.000');
  houses.add(house2.data());
  print(houses);
}

class House {
  int id;
  String name;
  String prize;

  House({required this.id, required this.name, required this.prize});

  String data() {
    return 'id: $id, name: $name, prize: $prize' + '\n';
  }
}
