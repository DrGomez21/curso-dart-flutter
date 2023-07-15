/**
 * La diferencia entre async y async*
 * async -> retorna algún tipo de dato conocido.
 * async* -> retorna un Stream.
*/

void main() {

  final valuesToEmit = ["Diego", "Ruben", "Marcos", "Noelia", "Jazmin"];

  print("Ganadores");
  print("-------------------");
  emitNumbers(valuesToEmit)
    .listen( (event) {
      print("Nombre: $event");
    });

}

Stream<String> emitNumbers(List<String> nombres) async* {

  for (var i in nombres) {
    await Future.delayed(const Duration(seconds: 2));
    yield i;  // Equivalente a return, pero para Streams asíncronos.
  }

}


