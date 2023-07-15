
/**
 * Mixin -> Especialización de una clase
 * 
*/
void main() {
  Pato donald = Pato();
  // Gracias a los mixins puedo acceder a todos los atributos y metodos de sus clases
  donald.caminar();
  donald.nadar();
  donald.volar();
}

// Clase más generica de todas
abstract class Animal {}

/* PRIMERA ESPECIALIZACIÓN */
// Agregamos todas las características únicas de los animales mamíferos.
abstract class Mamifero extends Animal {}
// Agregamos todas las características únicas de los animales que son aves.
abstract class Ave extends Animal {}
// Agregamos todas las características únicas de los animales acuaticos.
abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print("Estoy volando");
}

abstract class Caminante {
  void caminar() => print("Estoy caminando");
}

abstract class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}







