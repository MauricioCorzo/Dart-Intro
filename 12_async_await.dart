Future<void> main() async {
  print("Inicio del main.");

  try {
    final value = await httpGet("");
    print(value);
  } catch (err) {
    print(err);
  }

  print("Fin del main.");
}

const five_second = Duration(seconds: 5);

// Future<String> httpGet(String url) {
//   return Future.delayed(five_second, () {
//     throw "Error en la peticion http";
//     return "Respuesta de la peticion http";
//   });
// }

Future<String> httpGet(String url) async {
  await Future.delayed(five_second);
  throw 'Error en la peticion http;';
//   return "Respuesta de la peticion http";
}
