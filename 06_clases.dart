void main() {
//   final wolverine = new Hero('Logan', 'Regeneracion');
  final wolverine = new Hero(name: 'Logan', power: 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

// Constructor option 1
//    Hero( String pName, String pPower )
//     : this.name = pName,
//      this.power = pPower;

// Constructor option 2 (parametros posicionales)
//    Hero(this.name, this.power);

  Hero({
    required this.name,
    required this.power,
    //this.power = 'Sin Poder'
  });

  // Sobreescribir metodos nativos
  // el metodo origian toString devuelve 'Instance of 'Hero'
  @override
  String toString() {
    return '${this.name} - ${this.power}';
  }
}
