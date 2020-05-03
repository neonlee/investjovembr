import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00285F),
        title: Text("Descobrir"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              child: Image.asset('assets/image-1.png'),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla suscipit augue neque. In non rutrum dui, vestibulum feugiat metus. Sed nec pretium arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi tincidunt at urna sed varius. Integer porttitor eu lectus sed gravida. Sed at arcu non diam sodales euismod. In hac habitasse platea dictumst. Donec vitae ligula nisi. Suspendisse dapibus nisl in urna elementum accumsan. Quisque malesuada turpis tincidunt nulla hendrerit, non tincidunt augue eleifend. Nullam pretium, ex in consequat placerat, odio lorem fermentum diam, sed iaculis purus mauris sed metus. Cras diam nisl, ultrices vel dapibus non, vulputate sed orci. Maecenas condimentum laoreet lectus, id fermentum mauris scelerisque vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  labelText: 'Comentários',
                ),
              ),
            ),
            FlatButton(
              child: Chip(
                backgroundColor: Color(0xFF00285F),
                label: Text(
                  "Comentar",
                  style: TextStyle(color: Colors.white),
                ),
              ), onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
