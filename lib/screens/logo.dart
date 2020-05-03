import 'package:flutter/material.dart';
import 'package:investjovembr/screens/template_one.dart';
import 'package:splashscreen/splashscreen.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          navigateAfterSeconds: Learning(),
        ),
        Container(
          color: Color(0xFF00285F),
          child: Center(
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ],
    );
  }
}
