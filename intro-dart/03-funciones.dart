void main() {
  // print("Hola");
  saludar2(nombre: 'Juan', apellido: 'Alvarenga');
  saludar2(nombre: 'Pedro', apellido: null);
  saludar3(nombre: 'Pedro', apellido: null);

  final resultado = suma(4, 5);

  //  suma(4, 5) = 10; //❌ no es permitido

  print(resultado ?? 0 + 70);

  calcularISV(70);
  calcularISV(tipo_isv: 0.18, 120);
}

void saludar(String nombre, String apellido) {
  print('Hola $nombre $apellido');
}

void saludar2({String? nombre, String? apellido = ''}) {
  print('Hola $nombre $apellido');
}

void saludar3({required String nombre, required String? apellido}) {
  print('Hola $nombre $apellido');
}

int? suma(int a, int b) {
  return a + b;
}

double calcularISV(double precio, {double tipo_isv = 0.15}) {
  return precio * tipo_isv;
}
