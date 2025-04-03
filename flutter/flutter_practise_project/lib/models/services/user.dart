import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int id;
  String name;
  String email;
  String website;
  

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.website,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'website': website,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      website: map['website'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
