void main() {

  // Final -> La constante se crea en tiempo de ejecución.
  // const -> La constante se crea en tiempo de compilación/contrucción.
  // Definimos un mapa, que representa a un pokemon
  final Map<String, dynamic> pokemon = {
    'name':'Ditto',
    'hp':100,
    'isAlive':true,
    'abilities':['Copia'],
    'sprites': {
      1:'front.png',
      2:'back.png'
    }
  };

  // Acceder a los elementos del mapa.
  print('Nombre: ${ pokemon['name'] }');
  print('HP: ${ pokemon['hp'] }');
  print('Debilitado?: ${ pokemon['isAlive'] }');
  print('Habilidades: ${ pokemon['abilities'] }');
  print('Sprite: ${ pokemon['sprites'][1] }');  // Mapa dentro de otro mapa.

}