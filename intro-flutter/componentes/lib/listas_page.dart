import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body:

          // ListVidew.builder

          ListView(
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        children: [
          Text(
            'hola 1',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'hola 2',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
