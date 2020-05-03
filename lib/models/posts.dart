import 'package:investjovembr/models/users.dart';

class Posts {
  String title;
  People author;
  int id;
  String content;
  String image;
  String dateCreated;
  String type;
  String description;
  int like;

  Posts(
      {this.title,
      this.author,
      this.id,
      this.content,
      this.image,
      this.dateCreated});

  Posts.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['Author'];
    id = json['id'];
    content = json['content'];
    image = json['image'];
    dateCreated = json['Date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['Author'] = this.author;
    data['id'] = this.id;
    data['content'] = this.content;
    data['image'] = this.image;
    data['Date_created'] = this.dateCreated;
    return data;
  }
}
