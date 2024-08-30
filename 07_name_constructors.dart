void main() {
  final Map<String, dynamic> rawJsonIronman = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': false
  };

  final Map<String, dynamic> rawJsonSpiderman = {
    'name': 'Peter Parker',
    'power': 'Trepar paredes, tirar tela de araña, super sentido, super fuerza',
    'isAlive': true
  };

  final ironmanFromJson = new Hero.fromJson(json: rawJsonIronman);
  final spidermanFromJson = new Hero.fromJson(json: rawJsonSpiderman);

  final ironman = new Hero(isAlive: false, name: 'Tony Stark', power: 'Money');

  print(ironman);
  print(ironmanFromJson);
  print(spidermanFromJson);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson({required Map<String, dynamic> json})
      : this.name = json['name'] ?? 'No name found',
        this.power = json['power'] ?? 'No power found',
        this.isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    // TODO: implement toString
    return """
    Name: ${name}, 
    Power: ${power},
    sAlive: ${isAlive ? "Yes" : "Nope"}
    """;
  }
}
