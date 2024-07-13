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
      drawer: Drawer(
        // backgroundColor: Colors.teal[50],
        // width: double.infinity,
        child: Column(
          children: [
            Container(
              // color: Colors.teal[50],
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.85),
              child: ListView(
                children: [
                  const DrawerHeader(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 40, child: Icon(Icons.person)),
                      Text('jalvarenga'),
                    ],
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Opciones principales",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: Text('Inicio'),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pop();

                      // Navigator.of(context).pushNamed('home');
                    },
                  ),
                  ListTile(
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: Text('Listas'),
                    leading: const Icon(Icons.list),
                    onTap: () {
                      Navigator.of(context).pop(); //  va a cerrar el drawer
                      Navigator.of(context)
                          .pushNamed('listas'); // navegará a la pantalla
                    },
                  ),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    // thickness: 1.5,
                    color: Colors.purple,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Opciones secundarias",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: Text(
                      'Imagenes', // <= trailing comma),
                    ),
                    leading: const Icon(Icons.image),
                    onTap: () {
                      // Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('imagenes');
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text('Cerrar sesión'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.of(context).pushNamed('imagenes');
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
