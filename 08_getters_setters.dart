void main() {
  // Esto lo podria hacer sin el assert
  final mySquare = new Square(side: -10);
//   final mySquare = new Square(side: 10);

  // Error gracias al setter pero no me impide instanciar la clase con un valor      negativo
  // mySquare.side = -5;
  mySquare.side = 5;

  print("Area: ${mySquare.calculateArea()}");
}

class Square {
  //Propiedad privada
  double _side; // side * side

  Square({required double side})
      : assert(side >= 0, "Value ${side} must be >= 0"),
        this._side = side;

  double get area {
    return this._side * this._side;
  }

  set side(double value) {
    print('setting new value ${value}');
    if (value < 0) throw "Value must be >= 0";

    this._side = value;
  }

  double calculateArea() {
    return this._side * this._side;
  }
}
