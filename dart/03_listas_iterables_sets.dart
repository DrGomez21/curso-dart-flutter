void main() {
  
  // Listado de numeros.
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 7, 8, 9, 10];

  print(numbers);
  // Longitud de la lista.
  print('Cant: ${numbers.length}');
  // Primer elemento.
  print('Index 0: ${numbers[0]}');
  print('Index 0: ${numbers.first}');
  // Ultimo elemento.
  print('Ultimo: ${numbers.last}');

  // Invertido.
  // La funcion reversed convierte la lista en un Iterable.
  print('Reversed: ${numbers.reversed}');
  
  // Iterable: Colección de elementos iterables
  // Notacion: (v1, v2, v3)
  final reversedNumbers = numbers.reversed;
  print('List: ${reversedNumbers.toList()}');
  
  // Set es un listado con datos no duplicados
  // Notación: {v1, v2, v3}
  print('Set ${reversedNumbers.toSet()}');

  // Funcion sobre un listado.
  final numerosMayoresA5 = numbers.where((element) => element > 5);
  print('Mayores a 5: $numerosMayoresA5');

}