import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TextEditingController();

  String pregunta = '';
  String urlImage = '';
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  isLoading ? Container() : Image.network(urlImage),
                  Text(pregunta),
                  const Spacer(),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: const Text('Escribe una pregunta'),
                        suffixIcon: IconButton(
                          onPressed: () async {
                            print(controller.text);

                            //validar si termina con un ?

                            if (controller.text
                                    .trim()[controller.text.length - 1] !=
                                '?') {
                              return;
                            }

                            //mandar al text debajo de la imagen
                            pregunta = controller.text;

                            urlImage = await getAnswer();
                            isLoading = false;

                            setState(() {});
                          },
                          icon: const Icon(Icons.send),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getAnswer() async {
    final response = await http.get(Uri.parse('https://yesno.wtf/api'));

    final data = json.decode(response.body);

    return data['image'];
  }
}
