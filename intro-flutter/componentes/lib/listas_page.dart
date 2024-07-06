import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget {
  const ListasPage({super.key});

  @override
  State<ListasPage> createState() => _ListasPageState();
}

class _ListasPageState extends State<ListasPage> {
  final postres = [
    {
      'id': 1,
      'nombre': 'Torta de chocolate',
      'precio': 10.0,
    },
    {
      'id': 2,
      'nombre': 'Helado',
      'precio': 5.0,
    },
    {
      'id': 3,
      'nombre': 'Gelatina',
      'precio': 3.0,
    },
    {
      'id': 4,
      'nombre': 'Flan',
      'precio': 2.0,
    },
  ];

  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: ListView.builder(
        itemCount: postres.length,
        itemBuilder: (context, index) {
          return ItemPostre(
            postre: postres[index],
            selected: index == indexSelected,
            press: () => _onItemTapped(index),
          );
        },
      ),
    );
  }

  //
  void _onItemTapped(int index) {
    setState(() {
      indexSelected = index;
    });
  }
}

class ItemPostre extends StatelessWidget {
  const ItemPostre({
    super.key,
    required this.postre,
    this.selected = false,
    this.press,
  });

  final Map<String, Object> postre;
  final bool selected;
  //propiedad que funciona como un evento ejecutado desde el padre
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: selected,
      title: Text('${postre['nombre']}'),
      subtitle: Text('${postre['precio']}'),
      leading: CircleAvatar(
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.cake,
          color: Colors.purple[100],
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: press,
    );
  }
}
