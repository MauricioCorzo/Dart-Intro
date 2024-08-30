void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;

  //null variables
  final String? maybe = null;
  String? maybe2;
  //List<String> inferido
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  //dynamic (any Typescript) == null por defecto
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6}; // Set
  errorMessage = () => true;
  errorMessage = null;

  // Forma de hacer string multilinea (similar a `` en Javascript)
  print("""
  ${pokemon}
  ${hp}
  ${isAlive}
  ${maybe}
  ${maybe2}
  ${abilities.first}
  ${sprites}
  ${errorMessage}
  """);
}
