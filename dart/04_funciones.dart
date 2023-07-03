void main() {

  print(saludarATodos());
  print(greetEveryone());
  print(sumarDosNumeros(5, 10));
  print(sumar(10, 20));
  print(sumarDosNumerosOpcional(15, 30));
  print(sumarDosNumerosOpcional(15));

}

// Función sin parámetros con dato de retorno.
String saludarATodos() {
  return 'Hola a todos';
}

// Función flecha sin parámetros.
String greetEveryone() => 'Hello, everyone';

// Función que recibe parámetros y retorna.
int sumarDosNumeros(int a, int b) {
  return a + b;
}

// Función flecha con parámetros.
int sumar(int a, int b) => a + b;

// Función con parametros opcionales y valores por defecto
int sumarDosNumerosOpcional(int a, [int b = 20]) {
  return a + b;
}

