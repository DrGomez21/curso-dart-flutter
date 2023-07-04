
void main() {

  final goku = Hero(
    nombre: 'Goku', 
    poder: 'Kamehameha',
    isAlive: true
  );

  final Map<String, dynamic> data = {
    'nombre': 'Vegeta',
    'poder': 'Garlik Ho',
    'isAlive': true
  };
  final vegeta = Hero.fromJSON(data);

  print(goku);
  print(goku.atacar());
  /****************** */
  print(vegeta);
  print(vegeta.atacar());

}

// Declaración de clases.
class Hero {

  // Atributos
  String nombre;
  String poder;
  bool isAlive;

  // Constructor(es).
  Hero ({ required this.nombre, required this.poder, required this.isAlive});
  
  /**
   * Otro constructor típico es:
   * Hero (String pName, String pPoder, bool pIsAlive)
   * : nombre = pName,
   *   poder = pPoder,
   *   isAlive = pIsAlive;
   * */  

  // Constructores por nombre.
  // Forma de utilizar constructores específicos, dependiendo de los parámtros de creacion.
  Hero.fromJSON(Map<String, dynamic> json)
    : nombre = json['nombre'] ?? 'Nombre no encontrado',
      poder = json['poder'] ?? 'Poder no encontrado',
      isAlive = json['isAlive'] ?? 'Vida no encontrada';

  // Métodos.
  String atacar() => '$nombre, lanzando un $poder';
  
  @override
  String toString() {
    return 'Hola, soy $nombre';
  }

}

