void main() {
  // List
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('List original: ${numbers}');
  print('List original length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse: ${numbers.reversed}');

  //Iterbale (el metodo reversed devuelve un iterable)
  final reversedNumber = numbers.reversed;
  print('Iterble: ${reversedNumber}');
  //Convertir el iterable en List otra vez
  print('List: ${reversedNumber.toList()}');
  //Convertir a Set (al igual que javascript no repite valores iguales y esta dentro   de {})
  print('Set: ${reversedNumber.toSet()}');

  final numberGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('Iterble > 5: ${numberGreaterThan5}');
  print('Set > 5: ${numberGreaterThan5.toSet()}');
}
