import 'package:aog/utils/price.util.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool completed;
  final Fuel fuel;

  Result({
    @required this.fuel,
    @required this.completed,
  });

  @override
  Widget build(BuildContext context) {
    final fuelName = ["álcool", "gasolina"][fuel.index];

    return Padding(
      padding: EdgeInsets.all(30),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: completed
              ? Theme.of(context).primaryColorLight
              : Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        padding: EdgeInsets.all(20),
        child: Text(
          "Use $fuelName!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: completed
                ? Theme.of(context).primaryColorDark
                : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
