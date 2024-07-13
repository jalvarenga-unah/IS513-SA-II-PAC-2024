import 'package:componentes/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductosProvider {
  Future<List<Producto>> getProductos() async {
    // const url = 'https://fakestoreapi.com/products';

    print('iniciando la petición');

    print('haciendo mas cosas');
    final url = Uri.https('fakestoreapi.com', 'products');
    // Uri.parse(url)
    http.get(url).then((respuesta) {
      print('quiero hacer otras cosas');

      json.decode(respuesta.body);

      print(respuesta.body);
    }).catchError((error) {
      print(error);
    });

    print('finalizando la petición');

    return <Producto>[];
  }
}
