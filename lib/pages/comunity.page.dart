import 'package:flutter/material.dart';
import 'package:investjovembr/pages/card.post.dart';

class Comunity extends StatefulWidget {
  const Comunity({Key key}) : super(key: key);
  @override
  _ComunityState createState() => _ComunityState();
}

class _ComunityState extends State<Comunity>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF00285F),
        actions: <Widget>[],
        bottom: TabBar(
          tabs: [
            new Tab(icon: new Icon(Icons.textsms)),
            new Tab(icon: new Icon(Icons.video_library)),
            new Tab(icon: new Icon(Icons.music_video)),
            new Tab(icon: new Icon(Icons.image)),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: Container(
        child: TabBarView(
          children: [
            CardPost(),
            CardPost(),
            CardPost(),
            CardPost(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
