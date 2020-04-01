import 'package:alcoolgas/pages/home.page.dart';
import 'package:alcoolgas/widgets/input.widget.dart';
import 'package:alcoolgas/widgets/loading-button.widget.dart';
import 'package:alcoolgas/widgets/logo.widget.dart';
import 'package:alcoolgas/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'widgets/submit-form.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
