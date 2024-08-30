// ignore_for_file: unused_local_variable

// La funcion main siempre es la que se ejecuta primero, similar al archivo index en Javascript
// Toadas las lineas deben terminar en ;
void main() {
  //String name = "Mauricio";

// diferencia entre variable con o sin tipado y final es que el ultimo no me permite reasignar el valor de la variable
  var otroMyName = "Eliana";
  otroMyName = "chango";
  String myName = "Mauricio";
  final lastName = "Corzo";

  // late final sirve para inicializar la variable pero aun no tenemos su valor, recien en tiempo de ejecucion
  // con const la tenemos que inicializar en tiempo de construccion
  // ambas son para una vez que la variable tenga valor, no pueda ser cambiada;
  late final int age;
  age = 29;
  const age2 = 29;

  print('hola ${myName + ' ' + lastName} has ${age}');
}
