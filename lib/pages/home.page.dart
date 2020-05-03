import 'package:flutter/material.dart';
//import 'package:investjovem/pages/create.post.dart';
import 'package:investjovembr/pages/list.posts.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00285F),
        title: Text("Descobrir"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dehaze),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      body: ListPosts(),
    );
  }
}
