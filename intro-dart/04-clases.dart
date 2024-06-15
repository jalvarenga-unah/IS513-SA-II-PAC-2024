import 'CuentaAhorro.dart';

void main() {
  final c1 = CuentaAhorro(
    propietario: 'Juan Alvarenga',
    numeroCuenta: 123123123,
  );

  final c2 = CuentaAhorro.cuenta(numeroCuenta: 2346);
  //* las propiedades que son marcadas como "late" deben ser inicializadas antes
  //* utilizar cualquier otro metodo
  c2.propietario = 'Enrique Rodas';

  final Map<String, dynamic> data = {
    'propietario': c2.propietario,
    'numeroCuenta': 1235252,
    // 'historioSaldos': [123, 45, 53, 274, 4257]
  };

  final c3 = CuentaAhorro.fromJson(data);

  try {
    // c1.depositarMonto(100);
    c1.saldo = -200;
    c2.saldo = 300;
  } catch (error) {
    print(error);
  }

  // print(c1.getSaldo());
  print(c1.saldo);
  print(c2.propietario);
}
