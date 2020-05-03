import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _term = false;
  TextEditingController email;
  TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00285F),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              child: Text(
                "Inscreva-se",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                labelText: 'Nome',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                labelText: 'Senha',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                labelText: 'Data Nascimento',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    onChanged: (bool value) {},
                    value: false,
                  ),
                  Text("Masculino"),
                  Checkbox(
                    onChanged: (bool value) {},
                    value: false,
                  ),
                  Text("Feminino"),
                  Checkbox(
                    onChanged: (bool value) {},
                    value: false,
                  ),
                  Text("Outro"),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        activeColor: Color(0xFF00285F),
                        value: _term,
                        onChanged: (bool value) {
                          setState(() {
                            _term = value;
                          });
                        },
                      ),
                      Center(
                        child: Text(
                          "Concordo com os termos e políticas de privacidade",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SizedBox.expand(
                child: OutlineButton(
                  borderSide: BorderSide(color: Color(0xFF00285F)),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(color: Color(0xFF00285F), fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
