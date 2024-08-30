void main() {
  print("Inicio del main.");

  httpGet("").then((value) => print(value)).catchError((err) => print(err));

  print("Fin del main.");
}

const five_second = Duration(seconds: 5);

Future<String> httpGet(String url) {
  return Future.delayed(five_second, () {
    // throw "Error en la peticion http";
    return "Respuesta de la peticion http";
  });
}
