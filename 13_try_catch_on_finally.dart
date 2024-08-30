Future<void> main() async {
  print("Inicio del main.");

  try {
    final value = await httpGet("");
    print('Exito: ${value}');
  } on Exception catch (err) {
    print("Tenemos una Exception: ${err}");
  } catch (err) {
    print('Oops, algo terrible paso: ${err}');
  } finally {
    print('Fin del trycatch');
  }

  print("Fin del main.");
}

const await_seconds = Duration(seconds: 1);

// Future<String> httpGet(String url) {
//   return Future.delayed(five_second, () {
//     throw "Error en la peticion http";
//     return "Respuesta de la peticion http";
//   });
// }

Future<String> httpGet(String url) async {
  await Future.delayed(await_seconds);
  throw new Exception("No hay parametros en el URL");
//   throw 'Error en la peticion http;';
//   return "Respuesta de la peticion http";
}
