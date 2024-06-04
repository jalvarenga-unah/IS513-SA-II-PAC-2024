void main() {
  //Listas

  final List<String?> postres = [
    'pie de manzana',
    'galletas',
    'donas',
    'pastel 3 leches',
    'brownies'
  ];

  postres.add("pie de limon");
//   postres.add(20);
//   postres.add([true,true,false]);

//   postres = [];
  print(postres[0]);

  for (final postre in postres) {
//     print(postre);
  }

  //callback / función anonima
  postres.forEach((String? postre) {
    print(postre);
  });
}
