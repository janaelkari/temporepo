import 'package:cloud_firestore/cloud_firestore.dart';

class missing {
  String adress;
  String age;
  String lastseen;
  String name;
  String nameofmissing;
  String phone;
  String image;
  String reward;
  String city;
  String status;
  String documentId;


  missing.fromMap(Map<String, dynamic> data,{String docId}) {
    adress = data['adress'];
    name = data['name'];
    age = data['age'];
    documentId = docId;
    lastseen = data['lastseen'];
    phone = data['phone'];
    image = data['image'];
    city = data['city'];
    reward = data['reward'];
    status = data['status'];
  }

}

