import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  PeticionesPage({super.key});

  final productosProvider = ProductosProvider();

  @override
  Widget build(BuildContext context) {
    productosProvider.getProductos();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Peticiones'),
      ),
    );
  }
}
