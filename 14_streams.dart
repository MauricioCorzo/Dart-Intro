void main() {
  //Con el listen() el Stream o es escuchado y  obtenemos sus valores
  emitNumbers().listen((num) => print("Stream number: ${num}"));
}

final Duration seconds = new Duration(seconds: 1);

Stream<int> emitNumbers() {
  return Stream.periodic(seconds, (value) => ++value)
      .take(5); // Indica cuantas veces se ejecuta el Stream
}
