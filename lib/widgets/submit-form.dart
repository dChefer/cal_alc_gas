import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gastCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitForm;

  SubmitForm({
    @required this.gastCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitForm,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: gastCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Álcool",
            ctrl: alcCtrl,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          func: submitForm,
          invert: false,
          text: "Calcular",
        ),
      ],
    );
  }
}
