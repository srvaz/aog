import 'package:aog/utils/price.util.dart';
import 'package:aog/widgets/calc-button.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:aog/widgets/result.widget.dart';
import 'package:aog/widgets/submit-form.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gasCtrl = new MoneyMaskedTextController();
  final _alcCtrl = new MoneyMaskedTextController();
  bool _completed = false;
  Fuel _resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SubmitForm(
              alcCtrl: _alcCtrl,
              gasCtrl: _gasCtrl,
            ),
          ),
          Result(completed: _completed, fuel: _resultText),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CalcButton(func: calculate))
        ],
      ),
    );
  }

  Future calculate() async {
    double alc = double.parse(_alcCtrl.text.replaceAll(",", "."));
    double gas = double.parse(_gasCtrl.text.replaceAll(",", "."));

    final priceUtil = new PriceUtils(alcPrice: alc, gasPrice: gas);

    setState(() {
      _resultText = priceUtil.winningFuel();

      _completed = true;
    });
  }
}
