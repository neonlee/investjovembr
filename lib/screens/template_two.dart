import 'package:flutter/material.dart';
import 'package:investjovembr/screens/template_one.dart';
import 'package:investjovembr/screens/template_tree.dart';

class Dreams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          var x = details.globalPosition.direction;
          if (x < 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return Objective();
                },
              ),
            );
          } else {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return Learning();
                },
              ),
            );
          }
        },
        child: Center(
          child: Image.asset("assets/image-2.png"),
        ),
      ),
    );
  }
}
