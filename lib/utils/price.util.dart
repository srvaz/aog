enum Fuel {
  alc,
  gas,
}

class PriceUtils {
  final double alcPrice;
  final double gasPrice;

  PriceUtils({
    this.alcPrice,
    this.gasPrice,
  });

  double calculateFuelRatio() => alcPrice / gasPrice;

  Fuel winningFuel() => this.calculateFuelRatio() >= 0.7 ? Fuel.gas : Fuel.alc;
}
