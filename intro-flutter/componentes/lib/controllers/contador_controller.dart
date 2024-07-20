import 'package:get/get.dart';

class ContadorController extends GetxController {
  //variables reactivas
  final RxInt _contador = 0.obs; // int -> RxInt ( variable reactiva/observable)

  int get contador => _contador.value;
  set contador(int valor) => _contador.value = valor;
}
