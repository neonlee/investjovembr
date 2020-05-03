import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00285F),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              labelText: 'Categoria',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              labelText: 'Post',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Tab(icon: new Icon(Icons.video_library)),
              new Tab(icon: new Icon(Icons.music_video)),
              new Tab(icon: new Icon(Icons.image)),
              InkWell(
                child: Chip(
                  backgroundColor: Color(0xFF00285F),
                  label: Text("Salvar", style: TextStyle(color: Colors.white),),
                ),
                onTap: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
