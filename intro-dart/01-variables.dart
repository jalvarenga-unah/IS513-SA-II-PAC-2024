void main() {
  //variables

  String nombre = 'Juan';
  int edad;
  var nulish = null;

  dynamic postre = 'Cheescake';
  postre = 90;

  nulish = 'Enrique';
  nulish = 20;

  edad = 29;

  print(nombre);

  print(edad);

  print(nulish);

  //listas y diccionarios

  final List<int> lista = [];

//   lista = [3,4,5]; // ⬅️ cambia la referencia

  lista.add(1);
  lista.add(20);
  lista.add(-4);
  lista.add(-4);

//   lista.add('5'); //❌
//   lista.add('olii');
//   lista.add(false);
//   lista.add([]);

  int p = lista.length - 1;
  lista[p] = lista[p] * -1;
//   lista[ p ] *= -1;

  print(lista);

  print(lista.length);

  lista.remove(-4);

  print(lista);

  final postres = [
    'cheescake',
    'pie de limon',
    'donas glaseadas',
    'chocolates',
    'flan',
    'galletas con chispas de cocolate'
  ];

  // Forma tradicional
//   for (int a = 0; a < postres.length; a++){
//     print(postres[a]);
//   }

  //forma un poco mas cool
//     for (final postre in postres) {
//       print(postre);
//     }

  // uso de Map (super cool)

  final postresFuturos = [...postres];
  postres.clear();

  postres.addAll(postresFuturos.map((String postre) {
    return 'brocolis';
  }));

  print(postres);
//   print(supuestosPostres);

  final List<int?> numeros = [3, 5, 6, 7, 9, 7, 4, null];

  final dobles = numeros.map((item) => (item ?? 0) * 2).toList();

  final doblesImpares = numeros.map((valor) {
    if ((valor ?? 0) % 2 != 0) return (valor ?? 0) * 2;

    return valor; // retorna null, cuando lo sea
  }).toList();

  print(numeros);
  print(dobles);
  print(doblesImpares);

  //funciones y callbacks
}
