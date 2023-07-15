// Vamos a mejorar el archivo 11_asincronismo, utilizando la gestión de errores en Dart
void main() async {

  print("Inicio del programa");

  // Como este codigo podría fallar.
  try {
  
    final response = await httpGet("url");  // await solo puede usarse dentro de funciones async.
    print(response);
  
  } on Exception {
    print("Tenemos una Exception");
  
  } catch (err) {
    print('Tenemos un error: $err');
  
  } finally {
    print("Me ejecuto de cualquier forma uwu");
  }

  print("Fin del programa");
}

// Al declarar async en la funcion, ya se sobreentiende que regresará un Future.
Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 2)); // Esperamos a que se realice el Future.
  // Se traduce como "Espera el valor de duration y luego haz lo siguiente del codigo"
  
  throw Exception('No hay suficientes parametros en la url');

  // return 'Tenemos un valor http jujuuu';
}
