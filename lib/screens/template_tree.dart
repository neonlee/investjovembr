import 'package:flutter/material.dart';
import 'package:investjovembr/pages/start.page.dart';
import 'package:investjovembr/screens/template_two.dart';


class Objective extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          var x = details.globalPosition.direction;
          if (x < 1) {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Start();
            }));
          } else {
            Navigator.pop(context, MaterialPageRoute(builder: (_) {
              return Dreams();
            }));
          }
        },
        child: Center(
          child: Image.asset('assets/image-3.png'),
        ),
      ),
    );
  }
}
