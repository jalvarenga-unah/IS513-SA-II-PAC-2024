class CuentaAhorro {
  //propiedades
  late final int numeroCuenta;
  double _saldo = 0;
  late final String propietario;

  //Constructor
  CuentaAhorro({required this.numeroCuenta, required this.propietario});

  //constructores con nombre
  CuentaAhorro.cuenta({
    required this.numeroCuenta,
  });

  CuentaAhorro.propietario({
    required this.propietario,
  });

  //constructor factory
  //permite retoronar una instancia nueva
  factory CuentaAhorro.fromJson(Map map) {
    return CuentaAhorro(
        propietario: map['propietario'], numeroCuenta: map['numeroCuenta']);
  }

  //comportamientos (metodos)

  // double getSaldo() {
  //   return this._saldo;
  // }

  // void depositarMonto(double valor) {
  //   if (valor <= 0) {
  //     throw Exception('El monto depositafo no es válido');
  //   }

  //   this._saldo += valor;
  // }

  double get saldo => this._saldo;

  double get intereses {
    return this._saldo * 3 / 360 * 30;
  }

  // * deposito
  set saldo(double valor) {
    if (valor <= 0) {
      throw Exception('El monto depositado no es válido');
    }

    this._saldo += valor;
  }

  double retiro(double valor) {
    if (valor > this._saldo) {
      throw Exception('El valor a retirar, excede el monto disponible');
    }

    if (valor <= 0) {
      throw Exception('El monto que desea retirar, no es válido');
    }

    this._saldo -= valor;

    return this._saldo;
  }
}
