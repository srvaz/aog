import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 60),
        Image.asset(
          "assets/images/aog-white.png",
          height: 80,
        ),
        SizedBox(height: 30),
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            fontSize: 25,
            color: Theme.of(context).primaryColorDark,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
