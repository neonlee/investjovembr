import 'package:investjovembr/models/group.dart';

class People {
  int id;
  String name;
  String email;
  String password;
  String dateBirth;
  bool term;
  bool conected;
  String avatar;
  Group idGroup;
  String genre;

  People(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.dateBirth,
      this.term,
      this.conected,
      this.avatar,
      this.idGroup,
      this.genre});

  People.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    password = json['Password'];
    dateBirth = json['Date_birth'];
    term = json['Term'];
    conected = json['Conected'];
    avatar = json['Avatar'];
    idGroup = json['idGroup'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['Date_birth'] = this.dateBirth;
    data['Term'] = this.term;
    data['Conected'] = this.conected;
    data['Avatar'] = this.avatar;
    data['Id_group'] = this.idGroup;
    data['Genre'] = this.genre;
    return data;
  }
}
