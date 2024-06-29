import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.contador,
    this.titulo = '',
  });

  final int contador;
  final String titulo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nuevoContador = 0;

  //solo se ejecuta 1 vez
  @override
  void initState() {
    // ejecuta la funcionalidad normal o habitual desde el padre
    super.initState();

    nuevoContador = widget.contador;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle estiloTexto =
        TextStyle(color: Colors.indigo[200], fontWeight: FontWeight.w700);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromRGBO(0, 150, 136, 0.2),
        // backgroundColor: Color(0xB3242424),
        backgroundColor: Colors.indigo,
        centerTitle: false,
        title: Text(
          widget.titulo != '' ? widget.titulo : 'Mi primer App',
          style: estiloTexto,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          // color: Colors.red,
          width: double.infinity,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hizo tantas veces clics:',
                style: estiloTexto.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '${nuevoContador}',
                style: estiloTexto.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              nuevoContador--;

              setState(() {});
            },
            // backgroundColor: Colors.amber,
            child: const Icon(
              Icons.exposure_minus_1,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(
            height: 8.5,
          ),
          FloatingActionButton(
            onPressed: () {
              nuevoContador++;

              setState(() {});
            },
            // backgroundColor: Colors.amber,
            child: const Icon(
              Icons.plus_one_outlined,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
