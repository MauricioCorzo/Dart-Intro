/* 
https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3

    mixin A {
      String getMessage() => 'A';
    }

    mixin B {
      String getMessage() => 'B';
    }

    class P {
      String getMessage() => 'P';
    }

    class AB extends P with A, B {}

    class BA extends P with B, A {}

    void main() {
      String result = '';

      final ab = AB();
      result += ab.getMessage();

      final ba = BA();
      result += ba.getMessage();

      print(result); Prints BA, el ultimo mixin es el que se mira primero
    }

      abstract class Super {
        void method() {
          print("Super");
        }
      }

      class MySuper implements Super {
        @override
        void method() {
          print("MySuper");
        }
      }

      mixin Mixin on Super {
        @override
        void method() {
          super.method();
          print("Sub");
        }
      }

      class Client extends MySuper with Mixin {}

      void main() {
        Client().method();  Pints MySuper and Sub
        }
*/

/* 
class Musician {
  musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician {
  performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class SingerDancer extends Musician with MusicalPerformer { }

main() {
  SingerDancer().performerMethod(); Prints PerfomingMusic! and Playing music! 'on [class]' le dice al mixin que tiene que ser aplicado a una class que sea la misma o extienda de ella 
}
*/

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print("estoy volando!");
}

mixin Caminante {
  void caminar() => print("estoy caminando!");
}

mixin Nadador {
  void nadar() => print("estoy nadando!");
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Nadador, Volador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final batman = new Murcielago();
  batman.caminar();
  batman.volar();

  final duck = new Pato();
  duck.caminar();
  duck.volar();
  duck.nadar();
}
