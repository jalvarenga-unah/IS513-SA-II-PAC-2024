import 'package:componentes/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EstadosPage extends StatelessWidget {
  EstadosPage({super.key});

  // final controller = ContadorController();
  final controller = Get.find<ContadorController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estados'),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                '${controller.contador}',
                style: const TextStyle(fontSize: 20),
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.contador++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
