import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';

class SubmitForm extends StatelessWidget {
  final MoneyMaskedTextController gasCtrl;
  final MoneyMaskedTextController alcCtrl;

  SubmitForm({
    @required this.alcCtrl,
    @required this.gasCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Input(ctrl: gasCtrl, label: "Gasolina")),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: Input(ctrl: alcCtrl, label: "Álcool"),
        )
      ],
    );
  }
}
