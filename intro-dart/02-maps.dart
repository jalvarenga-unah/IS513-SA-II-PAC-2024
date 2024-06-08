void main() {
  final Map<String, dynamic> mascota = {
    'nombre': 'Apolo',
    'raza': 'Terrier',
    'edad': 2,
    'comidas_favoritas': ['pollito', 'sandia'],
    // 2: 'hola',
    // false: true
  };

  mascota['edad'] = 3; //modificar los valores de las claves

  mascota['apodo'] = 'Apolito'; // agregar nuevas claves

  // mascota.clear(); // elimina o limpia todos los valores y claves del Map

  mascota.addAll({'nombre': 'Update', 'test': 'Hola mundo'});

  mascota.remove('test'); // modifica la variable original

  print(mascota);
  print(mascota['nombre']);
  print(mascota['edad']);
}
