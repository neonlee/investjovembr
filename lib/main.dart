
import 'package:flutter/material.dart';
import 'package:investjovembr/screens/logo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InvestJovem',
      home: Logo(),
    );
  }
}
