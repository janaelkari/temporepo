import 'package:cloud_firestore/cloud_firestore.dart';

class missing {
  String adress;
  String age;
  String lastseen;
  String name;
  String nameofmissing;
  String phone;
  String image;


  missing.fromMap(Map<String, dynamic> data) {
    adress = data['adress'];
    name = data['name'];
    age = data['age'];
    lastseen = data['lastseen'];
    phone = data['phone'];
    image = data['image'];
    nameofmissing = data['nameofmissing'];

  }

}

