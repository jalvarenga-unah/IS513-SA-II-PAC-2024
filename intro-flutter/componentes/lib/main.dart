import 'package:componentes/home_page.dart';
import 'package:componentes/images_page.dart';
import 'package:componentes/listas_page.dart';
import 'package:componentes/menus_page.dart';
import 'package:componentes/peticiones_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compemnts App',
      // home: HomePage(),
      initialRoute: 'home', //esta es la ruta principal
      routes: {
        'home': (context) => const HomePage(),
        'listas': (context) => const ListasPage(),
        'imagenes': (context) => const ImagenesPage(),
        'menus': (context) => const MenusPage(),
        'peticiones': (context) => const PeticionesPage(),
        // 'inputs': (context) => const InputsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        //* Generación de rutas dinamicas en funcion del nombre en las propiedes de la navegación
        //* no sería necesario la definición de las rutas en el mapa de rutas (routes)
        // switch (settings.name) {
        //   case 'home':
        //     return MaterialPageRoute(builder: (context) => const HomePage());
        //   case 'listas':
        //     return MaterialPageRoute(builder: (context) => const ListasPage());
        //   case 'imagenes':
        //     return MaterialPageRoute(
        //         builder: (context) => const ImagenesPage());
        //   case 'menus':
        //     return MaterialPageRoute(builder: (context) => const MenusPage());
        //   case 'peticiones':
        //     return MaterialPageRoute(
        //         builder: (context) => const PeticionesPage());
        //   default:
        //     return MaterialPageRoute(
        //       builder: (context) => PageNotFound(ruta: settings.name),
        //     );
        // }

        // Ruta por defecto, que no existe en el mapa de rutas
        return MaterialPageRoute(
          builder: (context) => PageNotFound(ruta: settings.name),
        );
      },
    );
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({
    super.key,
    this.ruta = 'No-found',
  });

  final String? ruta;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('La ruta "$ruta" no existe')));
  }
}
