import 'package:componentes/models/producto.dart';
import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  PeticionesPage({super.key});

  final productosProvider = ProductosProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Peticiones'),
        ),
        body: FutureBuilder(
          future: productosProvider.getProductos(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            final listaProductos = snapshot.data!;

            return ListView.builder(
                itemCount: listaProductos.length,
                itemBuilder: (BuildContext context, int index) {
                  Producto producto = listaProductos[index];

                  return ListTile(
                    title: Text(producto.title),
                    subtitle: Text(producto.description),
                  );
                });
          },
        ));
  }
}
