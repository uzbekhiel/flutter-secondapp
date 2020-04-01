import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcoolCtrl = new MoneyMaskedTextController();
  var buttonText = "";
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcoolCtrl,
    @required this.buttonText,
    @required this.submitFunc,
    @required this.busy,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 30,
            left: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 30,
            left: 30,
          ),
          child: Input(
            label: "Álcool",
            ctrl: alcoolCtrl,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          text: buttonText,
          invertColors: false,
          func: submitFunc,
          busy: busy,
        )
      ],
    );
  }
}
