import 'package:alcoolgas/widgets/logo.widget.dart';
import 'package:alcoolgas/widgets/submit-form.widget.dart';
import 'package:alcoolgas/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcoolCtrl = new MoneyMaskedTextController();
  var _success = false;
  var _resultText = "";
  var _busy = false;
  var _backColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    // _backColor = Theme.of(context).primaryColor;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          color: _backColor,
          child: ListView(
            children: [
              Logo(),
              _success
                  ? Success(
                      result: _resultText,
                      reset: reset,
                      buttonText: "CALCULAR NOVAMENTE",
                    )
                  : SubmitForm(
                      gasCtrl: _gasCtrl,
                      alcoolCtrl: _alcoolCtrl,
                      buttonText: "CALCULAR",
                      submitFunc: calculate,
                      busy: _busy,
                    )
            ],
          ),
        ));
  }

  reset() {
    setState(() {
      _backColor = Colors.deepPurple;
      _alcoolCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _success = false;
      _busy = false;
    });
  }

  Future calculate() {
    var alc = double.parse(
      _alcoolCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
    );

    var gas = double.parse(
      _gasCtrl.text.replaceAll(new RegExp(r'[,.]'), ''),
    );

    setState(() {
      _backColor = Colors.indigo;
      _success = false;
      _busy = true;
    });

    return Future.delayed(
      const Duration(seconds: 3),
      () {
        if (alc / gas >= 0.7)
          _resultText = "Compensa usar Galolina!";
        else
          _resultText = "Compensa usar Álcool";

        setState(() {
          _success = true;
          _busy = false;
        });
      },
    );
  }
}
