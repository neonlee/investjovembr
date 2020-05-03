import 'package:flutter/material.dart';
import 'package:investjovembr/screens/template_two.dart';



class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (TapDownDetails details) {
          var x = details.globalPosition.direction;
          if (x < 1) {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Dreams();
            }));
          }
        },
        child: Center(
          child: Image.asset("assets/image-1.png"),
        ),
      ),
    );
  }
}
