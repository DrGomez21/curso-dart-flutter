/**
 * Dado un numero, imprimir los números primos entre 1 y n
 */

void main() {
  
  int numero = 14;  // Número límite.
  print("La suma es: ${sumarPrimos(numero)}");

}

// Función que suma todos los numeros primos entre el 1 y el limite dado
/* @param limite */
int sumarPrimos(int limite) {
  int i = 2;
  int sumatoria = 0;

  while (i <= limite) {
    if (esPrimo(i))
      sumatoria += i;

    i++;
  }

  return sumatoria;
}

/* Funcion para saber si el numero es primo o no */
bool esPrimo(int numero) {
  
  if (numero < 2)
    return false;
  
  for (var i = 2; i < numero; i++) {
    if (numero % i == 0)
      return false;
  }

  return true;
}


