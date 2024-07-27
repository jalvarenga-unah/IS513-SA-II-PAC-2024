import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_appbar/buscador_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _controller = Get.put(BuscadorController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Obx(
            () => _controller.buscando
                ? TextField(
                    onChanged: (value) {
                      _controller.filtro = value;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Buscar...',
                    ),
                  )
                : const Text('Mi super app'),
          ),
          actions: [
            IconButton(
              icon: Obx(
                () => _controller.buscando
                    ? const Icon(Icons.close)
                    : const Icon(Icons.search),
              ),
              onPressed: () {
                _controller.buscando = !_controller.buscando;
              },
            ),
          ],
        ),
        body: Center(
          child: Obx(() => Text('Valor del TextField: ${_controller.filtro}')),
        ),
      ),
    );
  }
}
