void main() {
  print(greetEveryone());

  print('Suma: ${addTowNumbers(10, 20)}');

  // Error Expected
  // print( 'Suma: ${addTowNumbers(10 , "20")}' );

  print('Arrow Suma: ${addTowNumbersArrow(10, 20)}');

  print('Suma Optional: ${addTowNumbersOptional(10, null)}');

  // el orden no importa cuando los parametros de la funcion fueron declarados con    {}
  print(greetPerson(message: "Saludos,", name: "Mauricio"));
}

String greetEveryone() {
  return 'Hello everyone!';
}

//No es permitido en funciones flechas elaborar un cuerpo de funcion dentro de {}
// tiene que ser si o si una funcion one liner
String greetEveryoneArrow() => 'Hello everyone!';

int addTowNumbers(int a, int b) {
  return a + b;
}

int addTowNumbersArrow(int a, int b) => a + b;

// OR                            [int b = 0]
int addTowNumbersOptional(int a, int? b) {
  b = b ?? 0;
  return a + b;
}

//Caudno los envuelvo en {} los parametros son opcionales a pesar del tipado
// por eso se necesita el required String para que Dart no llore
String greetPerson({required String name, String message = 'Hola, '}) {
  return '$message $name';
}
