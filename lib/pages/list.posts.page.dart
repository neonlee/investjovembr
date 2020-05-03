import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:investjovembr/pages/card.post.dart';
import 'package:investjovembr/pages/comunity.page.dart';

class ListPosts extends StatefulWidget {
  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF00285F),
              borderRadius: BorderRadius.vertical(
                  top: Radius.zero, bottom: Radius.elliptical(400, 120)),
            ),
            child: StreamBuilder(
              stream: Firestore.instance.collection("tags").snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (BuildContext context, int index) {
                    DocumentSnapshot ds = snapshot.data.documents[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Comunity(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Chip(
                          backgroundColor: Color(0xFF3D6399),
                          label: Text(
                            ds['name'],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Artigos em Destaque",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF00285F),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardPost(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
