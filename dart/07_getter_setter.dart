
void main() {

  final miCuadrado = Cuadrado(lado: -10);

  print('Area: ${miCuadrado.area}');

}

class Cuadrado {
  // Atributos
  int _lado; // Privado _

  // Constructor.
  Cuadrado({ required lado })
    : assert(lado > 0, 'El lado debe ser mayor a 0'),
      _lado = lado;

  // Getter.
  int get area {
    return _lado * _lado;
  }

  // Setter.
  set lado(int valor) {
    print('Asignando nuevo valor: $valor');
    if (valor < 0) throw 'El valor debe ser mayor a 0 (cero)';
    
    _lado = valor;
  }

  // Metodos
  int calcularArea() => _lado * _lado;


}
