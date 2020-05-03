import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:investjovembr/pages/post.page.dart';

class CardPost extends StatefulWidget {
  @override
  _CardPostState createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection("Posts").snapshots(),
        builder: (context, snapshot) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.documents.length,
            itemBuilder: (BuildContext context, int index) {
              DocumentSnapshot ds = snapshot.data.documents[index];
              return Card(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                elevation: 15,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/image-1.png"),
                      ),
                      Container(
                        child: Text(
                          ds["title"],
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          ds["description"],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: IconButton(
                              icon: const Icon(Icons.favorite),
                              onPressed: () {},
                            ),
                          ),
                          Text(ds["like"].toString()),
                          Container(
                            child: IconButton(
                              icon: const Icon(Icons.comment),
                              onPressed: () {},
                            ),
                          ),
                          Text('100'),
                          Container(
                            child: IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {},
                            ),
                          ),
                          Text('100'),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF00285F),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20),
                                right: Radius.circular(20),
                              ),
                            ),
                            child: OutlineButton(
                              color: Color(0xFF00285F),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Post(),
                                  ),
                                );
                              },
                              child: Text(
                                "Leia Mais",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
