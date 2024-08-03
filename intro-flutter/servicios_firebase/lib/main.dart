import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:servicios_firebase/crear_producto.dart';
import 'package:servicios_firebase/firebase_options.dart';

void main() async {
//inicializa el proyecto de firebse en el app

  // Es necesario para el correcto funcionamiento de una aplición con "main"
  //  de forma asíncrona.

  // si hay erroes de compatibilidad con la version de Kotlin
  // hay que cambiar la version dentro de "settings.gralde" dentro del app de android
  // a la versión que se especifica (1.8.22)
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (BuildContext context) => const HomePage(),
        '/crear_producto': (BuildContext context) => CrearProducto(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productosRef = FirebaseFirestore.instance.collection('productos');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: StreamBuilder(
        // future: productosRef.get(),
        stream: productosRef.snapshots(),
        builder: (BuildContext conext,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final query = snapshot.data; //QuerySnapshot

          final listaProductos =
              query!.docs; // listado de documentos (QueryDocumentSnapshot)

          return ListView.builder(
            itemCount: listaProductos.length,
            itemBuilder: (BuildContext context, int index) {
              final producto = listaProductos[index].data(); //me retorna un map

              return ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.amber[200],
                            title: Text('Eliminar'),
                            content: Text(
                                'quiere eliminar el producto: ${producto['nombre']}?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  final docRef = productosRef
                                      .doc(listaProductos[index].id);

                                  docRef.delete();
                                  Navigator.pop(context);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Producto eliminado!!'),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Eliminar',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                  return;
                                },
                                child: Text('Cancelar'),
                              )
                            ],
                          );
                        });
                  },
                ),
                title: Text(producto['nombre']),
                subtitle: Text(producto['descripcion']),
                trailing: Text(producto['precio'].toString()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/crear_producto');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
