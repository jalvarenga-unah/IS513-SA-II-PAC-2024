import 'package:get/get.dart';

class BuscadorController extends GetxController {
  final _filtro = ''.obs;
  final _buscando = false.obs;

  set filtro(value) => _filtro.value = value;
  get filtro => _filtro.value;

  set buscando(value) => _buscando.value = value;
  get buscando => _buscando.value;
}
