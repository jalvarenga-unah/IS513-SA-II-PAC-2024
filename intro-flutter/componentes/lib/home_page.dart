import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis componentes'),
      ),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listas');
                // Navigator.pushNamed(context, 'listas');

                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => const ListasPage()),
                // );
              },
              child: const Text('Listas'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('imagenes');
                Navigator.of(context).pushNamed('imagenes');
              },
              child: const Text('Imagenes'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('inputs');
              },
              child: const Text('Inputs'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('menus'),
              child: const Text('Menus'),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () => Navigator.of(context).pushNamed('peticiones'),
              icon: const Icon(Icons.http),
            )
          ],
        ),
      ),
    );
  }
}
