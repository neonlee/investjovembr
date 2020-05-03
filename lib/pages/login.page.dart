import 'package:flutter/material.dart';
import 'package:investjovembr/pages/signup.page.dart';
import 'package:investjovembr/shared/singin.dart';

import 'home.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username;
  TextEditingController password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF00285F),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.zero, bottom: Radius.elliptical(400, 120)),
                ),
                child: Image.asset('assets/logo.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: username,
                    // autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Login",
                      labelStyle: TextStyle(
                        color: Color(0xFF00285F),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: password,
                    // autofocus: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Color(0xFF00285F),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                        activeColor: Color(0xFF00285F),
                        value: true,
                        onChanged: (bool value) {
                          //setState(() {
                          // tuVal = value;
                          // });
                        },
                      ),
                      Text("Matenha-me conectado"),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Recupere sua senha'),
                    ],
                  ),
                  Container(
                    height: 40,
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
                          "Entre",
                          style:
                              TextStyle(color: Color(0xFF00285F), fontSize: 20),
                        ),
                        onPressed: () {
                          print( signIn("andersonsb18i@gmail.com", "anderson"));
                          signIn("andersonsb18i@gmail.com", "anderson").whenComplete((){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Entrar com outra rede social",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: OutlineButton(
                        borderSide: BorderSide(color: Colors.blue),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        child: Text(
                          "Facebook",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: OutlineButton(
                        borderSide: BorderSide(color: Colors.red),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        child: Text(
                          "Google",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
