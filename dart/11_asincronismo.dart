// Vamos a mejorar el archivo 10_Future, utilizando el asincronismo de Dart
void main() async {

  print("Inicio del programa");

  // Como este codigo podría fallar.
  try {
    final response = await httpGet("url");  // await solo puede usarse dentro de funciones async.
    print(response);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print("Fin del programa");
}

// Al declarar async en la funcion, ya se sobreentiende que regresará un Future.
Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 2)); // Esperamos a que se realice el Future.
  // Se traduce como "Espera el valor de duration y luego haz lo siguiente del codigo"
  
  return 'Tenemos un valor http jujuuu';
}
