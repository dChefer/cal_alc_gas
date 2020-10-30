import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/loading-button.widget.dart';
import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit-form.dart';
import 'package:alcool_gasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(
            reset: () {},
            result: "Compensa Utilizar ...",
          ),
          SubmitForm(
            gastCtrl: _gasCtrl,
            alcCtrl: _alcCtrl,
            busy: false,
            submitForm: () {},
          ),
        ],
      ),
    );
  }
}
