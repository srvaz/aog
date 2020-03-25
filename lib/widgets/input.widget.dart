import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  final String label;
  final MoneyMaskedTextController ctrl;

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      keyboardType: TextInputType.number,
      style: TextStyle(
        fontSize: 20,
        // color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: label,
        // labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
