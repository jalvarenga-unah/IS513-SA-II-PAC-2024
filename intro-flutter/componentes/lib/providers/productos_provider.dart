import 'package:componentes/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductosProvider {
  Future<List<Producto>> getProductos() async {
    // const url = 'https://fakestoreapi.com/products';

    final url = Uri.https('fakestoreapi.com', 'products');

    // Uri.parse(url)

    final respuesta = await http.get(url);

    final data = json.decode(respuesta.body); //respuesta.body = String

    final List<Producto> nuevaLista = [];

    for (var item in data) {
      final producto = Producto.fromJson(item);
      nuevaLista.add(producto);
    }

    //virtualmente nuca se ejecuta
    return nuevaLista;
  }
}
