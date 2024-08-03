import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CrearProducto extends StatelessWidget {
  CrearProducto({super.key});

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController descripcionController = TextEditingController();
  final TextEditingController precioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Producto'),
      ),
      body: Column(
        children: [
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
          ),
          TextField(
            controller: descripcionController,
            decoration: const InputDecoration(
              labelText: 'Descripción',
            ),
          ),
          TextField(
            controller: precioController,
            decoration: const InputDecoration(
              labelText: 'Precio',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final producto = {
                'nombre': nombreController.text,
                'descripcion': descripcionController.text,
                'precio': double.parse(precioController.text),
              };

              //guardar en firebase
              final productosRef =
                  FirebaseFirestore.instance.collection('productos');

              // final newProductoRef = await productosRef.add(producto);
              productosRef.doc('1234').set(producto);
              // print('Producto agregado con id: ' + newProductoRef.id);
            },
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
