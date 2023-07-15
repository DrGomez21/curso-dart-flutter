
void main() {

  print("Inicio del programa");

  httpGet("Prueba.com")
    .then((value) => print(value))  // En caso de que se cumpla la promesa.
    .catchError( (err) => print(err) ); // En caso de que la promesa no sea cumplida.

  print("Fin del programa");
}

// A FUTURO esta función retornará un String.
Future<String> httpGet(String url) {

  return Future.delayed( const Duration(seconds: 3), () {

    // Manejamos la excepcion de que la promesa no sea cumplida
    throw '--- Error en la peticion ---';

    // En caso de que sea null devuelve este.
    // return "Respuesta de la peticion http";
  
  });

}
