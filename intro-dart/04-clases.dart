import 'CuentaAhorro.dart';

void main() {
  final c1 = CuentaAhorro(
    propietario: 'Juan Alvarenga',
    numeroCuenta: 123123123,
  );
  try {
    // c1.depositarMonto(100);
    c1.saldo = -200;
  } catch (error) {
    print(error);
  }

  // print(c1.getSaldo());
  print(c1.saldo);
}
