// Clases Abstractas -> Clases diferidas.

void main() {
  PlantaDeEnergia e = PlantaDEEnergiaEolica(energiaInicial: 100);
  e.consumoDeEnergia(10);
  print(e.energiaSuministrada);
}

// Los enumerados no llevan punto y coma al final.
enum TipoDePlanta { nuclear, eolica, hidraulica }

// Definición de la clase.
abstract class PlantaDeEnergia {

  double energiaSuministrada;
  TipoDePlanta tipo;

  // Constructor
  PlantaDeEnergia ({
    required this.energiaSuministrada,
    required this.tipo
  });

  // Definición del método. Se sobreescribe en las otras clases.
  void consumoDeEnergia( double cantidad );
  String mostrarTipo();

}

class PlantaDEEnergiaEolica extends PlantaDeEnergia {

  PlantaDEEnergiaEolica ({required double energiaInicial})
    : super (energiaSuministrada: energiaInicial,
      tipo: TipoDePlanta.eolica
    );


  @override
  void consumoDeEnergia(double cantidad) {
    energiaSuministrada -= cantidad;
  }

  String mostrarTipo() => 'Eolico';

}

// Al realizar un implements podemos unicamente utilizar los metodos que necesitamos.
class PlantaNuclear implements PlantaDeEnergia {
  
  @override
  double energiaSuministrada;

  @override
  TipoDePlanta tipo = TipoDePlanta.nuclear;

  PlantaNuclear({ required this.energiaSuministrada });
  
  @override
  void consumoDeEnergia(double cantidad) {
    energiaSuministrada -= (cantidad - 0.5);
  }
  
  @override
  String mostrarTipo() {
    throw UnimplementedError();
  }

}

