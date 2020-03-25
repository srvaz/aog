import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final Function func;

  CalcButton({
    @required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("CALCULAR"),
      textColor: Theme.of(context).primaryColor,
      color: Colors.white,
      onPressed: func,
    );
  }
}
