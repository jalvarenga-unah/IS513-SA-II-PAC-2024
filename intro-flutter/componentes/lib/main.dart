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
      },
    );
  }
}
