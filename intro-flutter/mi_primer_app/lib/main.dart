import 'package:flutter/material.dart';
import 'package:mi_primer_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //const, transmite la inmutabildiad a sus hijos
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage(
        contador: 20,
        // titulo: 'Mi super app',
      ),
    );
  }
}
