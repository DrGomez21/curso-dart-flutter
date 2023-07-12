// Animales.

void main() {

  Perro pupi = Perro(nombre: 'Pupi', color: 'Marron', edad: 11, tieneManchas: false);

  print(pupi.emitirSonido());
  print(pupi.alimentandose(0.3));
  print(jugar(pupi));

}

String jugar(Mascota mascota) {
  return '${mascota.nombre} jugando';
}

abstract class Animal {
  String especie;
  int edad;
  
  Animal({required this.especie, required this.edad});

  // Metodos
  String alimentandose(double kg);

  String emitirSonido();

  @override
  String toString() {
    return 'Estoy en la clase Animal';
  }

}

abstract class Mascota extends Animal {
  String nombre;
  String color;
  String especie;
  int edad;

  Mascota( {required this.nombre, required this.color, required this.edad, required this.especie} ) : 
    super(especie: especie, edad: edad);
}

class Perro extends Mascota {
  String nombre;
  String color;
  int edad;
  bool tieneManchas;

  Perro( {required this.nombre, required this.color, required this.edad, required this.tieneManchas} ) : 
    super(nombre: nombre, color: color, edad: edad, especie: 'Perro');
    
  @override
  String alimentandose(double kg) {
    return 'Comiendo $kg Kg de alimento';
  }
    
  @override
  String emitirSonido() => '$nombre haciendo: Guau Guau';

  @override
  toString() => 'Soy un perro';


}





