void main() {
//   final windPlant = new EnergyPlant(); Error!
  final windPlant = new WindPlant(initialEnergy: 100);
  final nuclearPlant = new NuclearPlant(initialEnergy: 1000);

  print(windPlant.energyLeft);
  print(
      "Substracting enery from ${windPlant.type.name.toUpperCase()} Plant: ${usePlantEnergy(plant: windPlant)}");
  print(windPlant.energyLeft);

  print(nuclearPlant.energyLeft);
  print(
      "Substracting enery from ${nuclearPlant.type.name.toUpperCase()} Plant: ${usePlantEnergy(plant: nuclearPlant)}");
  print(nuclearPlant.energyLeft);
}

double usePlantEnergy({required EnergyPlant plant}) {
  if (plant.energyLeft < 10) throw Exception("Not enough energy");
  plant.consumeEnergy(amount: 10);
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

// Clase que no se puede instanciar, sirve para moldear otras clases
abstract class EnergyPlant {
  double energyLeft;
  PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  //Se definen sin una implementacion o cuerpo, eso queda a cargo
  //de la funcion que extienda o implemente
  void consumeEnergy({required double amount});
}

// extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : assert(initialEnergy > 0),
        super(energyLeft: initialEnergy, type: PlantType.wind);

  void consumeEnergy({required double amount}) {
    this.energyLeft -= amount;
  }
}

// implements
class NuclearPlant implements EnergyPlant {
  double energyLeft;
  PlantType type = PlantType.nuclear;

  NuclearPlant({required double initialEnergy})
      : assert(initialEnergy > 0),
        this.energyLeft = initialEnergy;

  void consumeEnergy({required double amount}) {
    // para hacer algo distinto al extends
    this.energyLeft -= (amount * 0.5);
  }
}
