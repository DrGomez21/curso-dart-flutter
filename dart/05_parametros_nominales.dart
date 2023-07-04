
void main() {
  print(saludarPersona(nombre: 'Diego', mensaje: 'Un saludo'));
}

// Los parámetros son opcionales y nominales.
// El parametro nombre es obligatorio (requerido).
String saludarPersona({required String nombre, String mensaje = 'Hola'}) {
  return '$mensaje, $nombre';
}
