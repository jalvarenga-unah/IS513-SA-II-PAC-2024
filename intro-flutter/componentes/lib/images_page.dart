import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Imagenes locales

            // Image(
            //   image: AssetImage('assets/images/logo-is.jpg'),
            //   width: 300,
            // ),

            Image.asset(
              'assets/images/logo-is.jpg',
              width: 300,
            ),

            //* Imagenes descargadas o por URL
            const SizedBox(
              height: 150,
              width: 150,
              child: Image(
                image: NetworkImage(
                  'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
                ),
                // height: 200,
                // color: Colors.red,
                fit:
                    BoxFit.cover, // funciona mejor cuando la imagen es cuadrada
              ),
            ),

            Image.network(
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            const Image(
              image: NetworkImage(
                'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
              ),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
